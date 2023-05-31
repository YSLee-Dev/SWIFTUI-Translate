//
//  BookmarkSaveUsecase.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

class BookmarkSaveUsecase : BookmarkSaveUsecaseProtocol{
    let repository : BookmarkSaveRepositoryProtocol
    
    init(repository : BookmarkSaveRepository = .init()){
        self.repository = repository
    }
    
    func addList(sourceLanguage: Language, translatedLanguage: Language, sourceText: String, translatedText: String) {
        self.repository.bookmarkListAdd(value: BookmarkData(id: UUID().uuidString,
                                                            sourceLanguage: sourceLanguage,
                                                            translatedLanguage: translatedLanguage,
                                                            sourceText: sourceText,
                                                            translatedText: translatedText))
    }
}
