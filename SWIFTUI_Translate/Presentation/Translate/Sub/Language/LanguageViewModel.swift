//
//  LanguageViewModel.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/30.
//

import Foundation

import Combine

class LanguageViewModel{
    let sourceLanguage = PassthroughSubject<Language, Never>()
    let targetLanguage = PassthroughSubject<Language, Never>()
}
