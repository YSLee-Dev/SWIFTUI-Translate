//
//  TranslateView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct TranslateView: View {
    var body: some View {
        VStack{
            LanguageView()
            ResultView()
            InsertView()
            Spacer()
        }
        .padding(15)
        .background(Color(uiColor: UIColor.secondarySystemBackground))
    }
}

struct TranslateView_Previews: PreviewProvider {
    static var previews: some View {
        TranslateView()
    }
}
