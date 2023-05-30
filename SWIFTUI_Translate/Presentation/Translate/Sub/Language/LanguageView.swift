//
//  LanguageView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct LanguageView: View {
    @State private var sourceAlertShow = false
    @State private var targetAlertShow = false
    
    @State private var sourceLanguage = Language.ko
    @State private var targetLanguage = Language.en
    
    let viewModel : LanguageViewModel
    
    var body: some View {
        HStack(alignment: .center){
            
            Button {
                self.sourceAlertShow = true
            } label: {
                Text(self.sourceLanguage.title)
                    .foregroundColor(Color(uiColor: UIColor.label))
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: UIColor.systemBackground))
                    .cornerRadius(10)
            }
            .confirmationDialog("Language" ,isPresented: $sourceAlertShow){
                ForEach(Language.allCases, id: \.self){ la in
                    Button(la.title){
                        self.sourceLanguage = la
                        self.viewModel.sourceLanguage.send(la)
                    }
                }

            }
            
            Button {
                self.targetAlertShow = true
            } label: {
                Text(self.targetLanguage.title)
                    .foregroundColor(Color(uiColor: UIColor.label))
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: UIColor.systemBackground))
                    .cornerRadius(10)
            }
            .confirmationDialog("Language" ,isPresented: $targetAlertShow){
                ForEach(Language.allCases, id: \.self){ la in
                    Button(la.title){
                        self.targetLanguage = la
                        self.viewModel.targetLanguage.send(la)
                    }
                }

            }
        }
        .padding(.vertical, 10)
        .background(Color(uiColor: UIColor.secondarySystemBackground))
    }
}
