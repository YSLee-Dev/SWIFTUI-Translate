//
//  ContentView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    let translateViewModel = TranslasteViewModel()
    var body: some View {
        TabView{
            TranslateView(viewModel: translateViewModel)
                .tabItem{
                    Image(systemName: "mic")
                    Text("번역")
                }
                .onAppear{
                    translateViewModel.bind()
                }
            BookmarkView()
                .tabItem{
                    Image(systemName: "star")
                    Text("즐겨찾기")
                }
        }
        .accentColor(Color.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
