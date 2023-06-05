//
//  TranslateRequestDataDTO.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

struct TranslateRequestDataDTO : Codable{
    let source : String
    let target : String
    let text : String
}
