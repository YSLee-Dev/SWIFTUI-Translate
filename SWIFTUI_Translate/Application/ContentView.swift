//
//  ContentView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    let translateViewModel : TranslasteViewModel
    let bookmarkViewModel : BookmarkViewModel
    
    var body: some View {
        TabView{
            TranslateView(viewModel: translateViewModel)
                .tabItem{
                    Image(systemName: "mic")
                    Text(NSLocalizedString("Translate", comment: "번역"))
                }
            
            BookmarkView(viewModel: bookmarkViewModel)
                .tabItem{
                    Image(systemName: "star")
                    Text(NSLocalizedString("Bookmark", comment: "즐겨찾기"))
                }
        }
        .accentColor(Color.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(translateViewModel: .init(), bookmarkViewModel: .init())
    }
}
