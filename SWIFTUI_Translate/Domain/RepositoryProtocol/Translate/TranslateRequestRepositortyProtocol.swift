//
//  TranslateRequestRepositortyProtocol.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

import Combine

protocol TranslateRequestRepositortyProtocol{
    func requestTranslate(_ info: TranslateRequestDataDTO) -> AnyPublisher<TranslateResponseDataDTO, URLError>
}
