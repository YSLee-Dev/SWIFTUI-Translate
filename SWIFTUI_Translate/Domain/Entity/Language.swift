//
//  Language.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/23.
//

import SwiftUI

enum Language : String, CaseIterable, Codable{
    case ko
    case en
    case ja
    case ch = "zh-CN"
    
    var title : String{
        switch self{
        case .ko: return "한국어"
        case .en: return "영어"
        case .ja: return "일본어"
        case .ch: return "중국어"
        }
    }
}
