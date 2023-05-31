//
//  BookmarkReadDeleteRepositoryProtocol.swift.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

protocol BookmarkReadDeleteRepositoryProtocol{
    func bookmarkListLoad() -> [BookmarkData]
    func bookmarkListDelete(id : String)
}
