//
//  InsertView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct InsertView: View {
    @State private var tfValue = ""
    var body: some View {
        VStack(alignment: .leading){
            TextEditor(text: $tfValue)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(0)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(20)
        }
        .background(Color(uiColor: UIColor.systemBackground))
        .cornerRadius(10)
        .overlay{
            if self.tfValue == ""{
                VStack{
                    Text("번역하고 싶은 문구를 입력하세요.")
                        .foregroundColor(.gray)
                        .padding(20)
                        .frame(maxWidth: .infinity,
                               alignment: .leading
                        )
                    Spacer()
                }
            }
        }
    }
}

struct InsertView_Previews: PreviewProvider {
    static var previews: some View {
        InsertView()
    }
}
