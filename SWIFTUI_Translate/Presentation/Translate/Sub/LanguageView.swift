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
                    }
                }

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
