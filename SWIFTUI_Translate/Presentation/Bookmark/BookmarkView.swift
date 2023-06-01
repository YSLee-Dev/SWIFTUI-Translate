//
//  BookmarkView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/01.
//

import SwiftUI

struct BookmarkView : View{
    let test : [BookmarkData] = [.init(id: "", sourceLanguage: .ko, translatedLanguage: .en, sourceText: "테스트입니다.테스트입니다테스트입니다", translatedText: "This is test"), .init(id: "2", sourceLanguage: .ko, translatedLanguage: .en, sourceText: "테스트입니다.", translatedText: "This is test")]
    
    var body: some View{
        NavigationView {
            List(test, id: \.id){
                BookmarkCell(data: $0)
                    .padding(10)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                    .background(Color(uiColor: .secondarySystemBackground))
            }
            .listStyle(.plain)
            .background(Color(uiColor: .secondarySystemBackground))
            .navigationTitle("즐겨찾기")
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
