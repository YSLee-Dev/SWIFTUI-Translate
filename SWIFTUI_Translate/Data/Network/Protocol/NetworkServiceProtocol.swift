//
//  NetworkServiceProtocol.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

import Combine

protocol NetworkServiceProtocol{
    func postRequest<D>(requestURL : String, info: [[String : Any]], decodingType : D.Type) -> AnyPublisher<D, URLError> where D : Decodable
}
