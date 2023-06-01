//
//  BookmarkReadDeleteUsecase.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/01.
//

import Foundation

class BookmarkReadDeleteUsecase : BookmarkReadDeleteUsecaseProtocol{
    let repositroty : BookmarkReadDeleteRepositoryProtocol
    
    init(repositroty : BookmarkReadDeleteRepository = .init()){
        self.repositroty = repositroty
    }
    
    func removeList(id : String){
        self.repositroty.bookmarkListDelete(id: id)
    }
    
    func listLoad() -> [BookmarkData]{
        self.repositroty.bookmarkListLoad()
    }
}
