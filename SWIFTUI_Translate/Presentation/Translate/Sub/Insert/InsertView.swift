//
//  InsertView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI
import Combine

struct InsertView: View {
    @State private var tfValue : String = ""
    let viewModel : InsertViewModel
    
    var body: some View {
        VStack(alignment: .trailing){
            Button {
                self.viewModel.value.send(self.tfValue)
            } label: {
                Text("확인")
                    .font(.callout)
                    .foregroundColor(.pink)
                    .padding(20)
            }
            
            TextEditor(text: self.$tfValue)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(0)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                .overlay{
                    if self.tfValue == ""{
                        VStack{
                            Text("번역하고 싶은 문구를 입력하세요.")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity,
                                       alignment: .leading
                                )
                                .padding(EdgeInsets(top: 10, leading: 25, bottom: 0, trailing: 0))
                            Spacer()
                        }
                    }
                }
            Spacer()
        }
        .background(Color(uiColor: UIColor.systemBackground))
        .cornerRadius(10)
    }
}
