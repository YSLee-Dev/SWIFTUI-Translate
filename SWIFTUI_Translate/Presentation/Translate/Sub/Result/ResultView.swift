//
//  ResultView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var viewModel : ResultViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(viewModel.resultText)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(20)
            
            
            HStack{
                Button {
                    self.viewModel.bookmarkBtnTap.send(Void())
                    print("스크랩")
                } label: {
                    Image(systemName: self.viewModel.bookmarkImg)
                    
                }
               
                
                Button {
                    print("복사")
                    UIPasteboard.general.string = self.viewModel.resultText
                } label: {
                    Image(systemName: "doc.on.doc")
                }
                
                Spacer()
            }
            .padding(20)
        }
        .background(Color(uiColor: UIColor.systemBackground))
        .cornerRadius(10)
    }
}
