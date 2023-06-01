//
//  BookmarkCell.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/01.
//

import SwiftUI

struct BookmarkCell: View {
    let data : BookmarkData
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(data.sourceLanguage.title)
                        .font(.body)
                    Text(data.sourceText)
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 5, trailing: 20))
                
                Spacer()
            }
            
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(data.translatedLanguage.title)
                        .font(.body)
                        .foregroundColor(.pink)
                    Text(data.translatedText)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.pink)
                }
                .padding(EdgeInsets(top: 5, leading: 20, bottom: 20, trailing: 20))
                
                Spacer()
            }
           
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal, 20)
    }
}

struct BookmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkCell(data: .init(id: "", sourceLanguage: .ko, translatedLanguage: .en, sourceText: "테스트입니다.", translatedText: "This is test"))
    }
}
