//
//  TranslasteViewModel.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/30.
//

import Foundation
import Combine

class TranslasteViewModel : ObservableObject{
    let languageViewModel = LanguageViewModel()
    let insertViewModel = InsertViewModel()
    let resultViewModel = ResultViewModel()
    
    let bookmarkSaveUsecase : BookmarkSaveUsecaseProtocol
    
    var bag = Set<AnyCancellable>()
    
    init(
        usecase : BookmarkSaveUsecase = .init()
    ){
        self.bookmarkSaveUsecase = usecase
    }
    
    func bind(){
        self.insertViewModel.value
            .sink{[weak self] value in
                self?.resultViewModel.bookmarkImg = "bookmark"
                self?.resultViewModel.resultText = value
            }
            .store(in: &bag)
        
        
       let bookmarkTap = self.resultViewModel.bookmarkBtnTap
            .map{ [weak self] _ in
                self?.insertViewModel.value.value
            }
            .filter{$0 != ""}
            .map{$0!}
            .removeDuplicates()
        
        bookmarkTap
            .sink{[weak self] _ in
                self?.tapEventMove()
            }
            .store(in: &self.bag)
        
        bookmarkTap
            .map{ _ in
                "bookmark.fill"
            }
            .assign(to: &self.resultViewModel.$bookmarkImg)
        
        let language = self.languageViewModel.sourceLanguage.combineLatest(self.languageViewModel.targetLanguage)
            .removeDuplicates {
                    $0.0 == $1.0
                }
        
        bookmarkTap
            .combineLatest(language)
            .sink{[weak self] data, language in
                self?.bookmarkSaveUsecase.addList(sourceLanguage: language.0,
                                                  translatedLanguage: language.1,
                                                  sourceText: data,
                                                  translatedText: self?.resultViewModel.resultText ?? "")
            }
            .store(in: &bag)
        
    }
}

extension TranslasteViewModel{
    func tapEventMove(){
        NotificationCenter.default.post(name: NSNotification.Name(UserDefaults.Key.bookmarks.rawValue), object: nil, userInfo: nil)
    }
}
