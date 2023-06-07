//
//  BookmarkViewModel.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/01.
//

import SwiftUI
import Combine

class BookmarkViewModel : ObservableObject{
    @Published var bookmarkList : [BookmarkData] = []
    
    let reload = CurrentValueSubject<Void, Never>(Void())
    let removeIndexSet = PassthroughSubject<IndexSet, Never>()
    
    let usecase : BookmarkReadDeleteUsecaseProtocol
    
    var bag = Set<AnyCancellable>()
    
    init(
        usecase : BookmarkReadDeleteUsecase = .init()
    ){
        self.usecase = usecase
    }
    
    func bind(){
        reload
            .eraseToAnyPublisher()
            .map{[weak self] _ in
                self?.usecase.listLoad()
            }
            .map{$0!}
            .assign(to: &self.$bookmarkList)
        
        self.removeIndexSet
            .sink{[weak self] indexSet in
                self?.usecase.removeList(indexSet: indexSet)
                self?.reload.send(Void())
            }
            .store(in: &bag)
        
        self.tapEvent()
    }
}

extension BookmarkViewModel{
    func tapEvent(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.tapEventObserver), name:  NSNotification.Name(UserDefaults.Key.bookmarks.rawValue), object: nil)
    }
}

extension BookmarkViewModel{
    @objc
    private func tapEventObserver(){
        self.reload.send(Void())
    }
}
