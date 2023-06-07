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
    @FocusState private var focus : Bool
    
    let viewModel : InsertViewModel
    
    var body: some View {
        VStack(alignment: .trailing){
            Button {
                self.viewModel.value.send(self.tfValue)
                self.focus = false
            } label: {
                Text(NSLocalizedString("Done", comment: "완료"))
                    .font(.callout)
                    .foregroundColor(.pink)
                    .padding(20)
            }
            
            TextEditor(text: self.$tfValue)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(0)
                .focused($focus)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                .overlay{
                    if self.tfValue == ""{
                        VStack{
                            Text(NSLocalizedString("TranslatePlaceHolder", comment: "입력하고 싶은 문구를 입력하세요."))
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
