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
        VStack(alignment: .leading){
           TextField("번역하고 싶은 문구 입력하세요.", text: $tfValue)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(0)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(20)
                .onSubmit {
                    print("눌림")
                    self.viewModel.value.send(tfValue)
                }
            
            Spacer()
        }
        .background(Color(uiColor: UIColor.systemBackground))
        .cornerRadius(10)
    }
}
