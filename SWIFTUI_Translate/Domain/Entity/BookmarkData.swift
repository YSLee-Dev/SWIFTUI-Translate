//
//  BookmarkData.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

struct BookmarkData : Codable, Identifiable{
    let id : String
    
    let sourceLanguage : Language
    let translatedLanguage : Language
    
    let sourceText : String
    let translatedText : String
}
