//
//  ResultView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/22.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("번역결과\n번역결과\n번역결과")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(20)
            
            
            HStack{
                Button {
                    print("스크랩")
                } label: {
                    Image(systemName: "bookmark")
                    
                }
               
                
                Button {
                    print("복사")
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

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
