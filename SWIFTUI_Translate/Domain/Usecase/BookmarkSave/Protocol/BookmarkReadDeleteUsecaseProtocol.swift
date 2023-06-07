//
//  BookmarkReadDeleteUsecaseProtocol.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/01.
//

import Foundation

protocol BookmarkReadDeleteUsecaseProtocol{
    func removeList(indexSet : IndexSet)
    func listLoad() -> [BookmarkData]
}
