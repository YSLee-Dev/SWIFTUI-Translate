//
//  BookmarkSaveRepository.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

class BookmarkSaveRepository : BookmarkSaveRepositoryProtocol{
    func bookmarkListAdd(value: BookmarkData) {
        UserDefaults.standard.bookMarkList = [value] + UserDefaults.standard.bookMarkList
    }
}

