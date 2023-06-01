//
//  SWIFTUI_TranslateApp.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

@main
struct SWIFTUI_TranslateApp: App {
    let translateViewModel : TranslasteViewModel = .init()
    let bookmarkViewModel : BookmarkViewModel = .init()
    
    var body: some Scene {
        WindowGroup {
            ContentView(translateViewModel: translateViewModel, bookmarkViewModel: bookmarkViewModel)
                .onAppear{
                    translateViewModel.bind()
                    bookmarkViewModel.bind()
                }
        }
    }
}
