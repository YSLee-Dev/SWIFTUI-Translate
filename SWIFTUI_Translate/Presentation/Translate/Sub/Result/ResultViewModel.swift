//
//  ResultViewModel.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/05/30.
//

import Foundation
import Combine

class ResultViewModel : ObservableObject{
    @Published var resultText : String = ""
    @Published var bookmarkImg : String = "bookmark"
    let bookmarkBtnTap = PassthroughSubject<Void, Never>()
}
