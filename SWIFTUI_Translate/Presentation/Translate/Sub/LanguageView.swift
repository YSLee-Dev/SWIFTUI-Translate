//
//  LanguageView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        HStack(alignment: .center){
            
            Button {
                print("BUTTON TAP")
            } label: {
                Text("한국어")
                    .foregroundColor(Color(uiColor: UIColor.label))
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: UIColor.systemBackground))
                    .cornerRadius(10)
            }
            
            
            Button {
                print("BUTTON TAP")
            } label: {
                Text("영어")
                    .foregroundColor(Color(uiColor: UIColor.label))
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: UIColor.systemBackground))
                    .cornerRadius(10)
            }
        }
        .padding(.vertical, 10)
        .background(Color(uiColor: UIColor.secondarySystemBackground))
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
