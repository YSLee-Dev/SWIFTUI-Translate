//
//  TranslateRequestRepositorty.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

import Combine

class TranslateRequestRepositorty : TranslateRequestRepositortyProtocol{
    let networkService : NetworkServiceProtocol
    
    init(service : NetworkService = .init()){
        self.networkService = service
    }
    
    func requestTranslate(_ info: TranslateRequestDataDTO) -> AnyPublisher<TranslateResponseDataDTO, URLError> {
       self.networkService.postRequest(
            requestURL: "https://openapi.naver.com/v1/papago/n2mt",
            info: [
                ["source" : info.source],
                ["target" : info.target],
                ["text" : info.text]
            ],
            decodingType: TranslateResponseDataDTO.self)
    }
}
