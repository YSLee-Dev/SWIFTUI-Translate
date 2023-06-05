//
//  TranslateResponseDataDTO.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

struct TranslateResponseDataDTO : Decodable{
    private let message : Message
    
    var translatedText : String{
        self.message.result.translatedText
    }
}

struct Message : Decodable{
    let result : Result
}

struct Result : Decodable{
    let translatedText : String
}
