//
//  TranslateView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct TranslateView: View {
    @StateObject var viewModel : TranslasteViewModel
    
    var body: some View {
        VStack{
            LanguageView(viewModel: self.viewModel.languageViewModel)
            ResultView(viewModel: self.viewModel.resultViewModel)
            InsertView(viewModel: self.viewModel.insertViewModel)
            Spacer()
        }
        .padding(15)
        .background(Color(uiColor: UIColor.secondarySystemBackground))
        
    }
}
