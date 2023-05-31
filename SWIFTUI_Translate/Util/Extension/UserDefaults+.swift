//
//  UserDefaults+.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/31.
//

import Foundation

extension UserDefaults{
    enum Key : String{
        case bookmarks
    }
    
    var bookMarkList : [BookmarkData]{
        get{
            guard let data = UserDefaults.standard.data(forKey: Key.bookmarks.rawValue) else {return []}
            return (try? PropertyListDecoder().decode([BookmarkData].self, from: data)) ?? []
        }
        set{
            print(newValue)
            UserDefaults.standard.setValue(try? PropertyListEncoder().encode(newValue), forKey: UserDefaults.Key.bookmarks.rawValue)
        }
    }
}
