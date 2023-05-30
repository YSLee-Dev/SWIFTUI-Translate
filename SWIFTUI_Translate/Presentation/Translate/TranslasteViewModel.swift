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
    
    var bag = Set<AnyCancellable>()
    
    func bind(){
        insertViewModel.value
            .sink{[weak self] value in
                self?.resultViewModel.resultText = value
            }
            .store(in: &bag)
    }
}
