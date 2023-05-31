//
//  BookmarkSaveUsecaseProtocol.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

protocol BookmarkSaveUsecaseProtocol{
    func addList(sourceLanguage: Language,
                  translatedLanguage: Language,
                  sourceText: String,
                  translatedText: String)
}
