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
    
    func bookmarkListDelete(id: String) {
        var row = -1
        
        for x in UserDefaults.standard.bookMarkList.enumerated(){
            if x.element.id == id{
                row = x.offset
                break
            }
        }
        
        guard row != -1 else {return}
        UserDefaults.standard.bookMarkList.remove(at: row)
    }
}

