//
//  BookmarkReadDeleteRepository.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

class BookmarkReadDeleteRepository : BookmarkReadDeleteRepositoryProtocol{
    func bookmarkListLoad() -> [BookmarkData] {
        UserDefaults.standard.bookMarkList
    }
    
    func bookmarkListDelete(indexSet : IndexSet) {
        UserDefaults.standard.bookMarkList.remove(atOffsets: indexSet)
    }
}

