//
//  TranslateRequestUsecase.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

import Combine

class TranslateRequestUsecase : TranslateRequestUsecaseProtocol{
    let repository : TranslateRequestRepositortyProtocol
    
    init(re : TranslateRequestRepositorty = .init()){
        self.repository = re
    }
    
    func targetLanguageTranslate(_ info : TranslateRequestDataDTO) -> AnyPublisher<String, Never> {
        self.repository.requestTranslate(info)
            .map{
                $0.translatedText
            }
            .catch{ error in
                print(error)
                return Just(error.localizedDescription)
            }
            .eraseToAnyPublisher()
    }
}
