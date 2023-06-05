//
//  TranslateRequestUsecaseProtocol.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

import Combine

protocol TranslateRequestUsecaseProtocol{
    func targetLanguageTranslate(_ info : TranslateRequestDataDTO) -> AnyPublisher<String, Never>
}
