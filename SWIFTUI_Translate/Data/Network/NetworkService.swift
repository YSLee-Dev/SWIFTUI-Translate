//
//  NetworkService.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/05.
//

import Foundation

import Combine

class NetworkService : NetworkServiceProtocol{
    let session : URLSession
    
    init(session : URLSession = .shared){
        self.session = session
    }
    
    func postRequest<D>(requestURL : String, info: [[String : Any]], decodingType : D.Type) -> AnyPublisher<D, URLError> where D : Decodable {
        guard let url = URL(string: requestURL) else {return Fail(error: URLError(.badURL)).eraseToAnyPublisher()}
        
        var stringParam = ""
        
        for x in info{
            for i in x {
                stringParam.append("\(i.key)=\(i.value)&")
            }
        }
        
        guard let parameters = stringParam.data(using: .utf8) else {return Fail(error: URLError(.cannotParseResponse)).eraseToAnyPublisher()}
        var request = URLRequest(url: url)
        
        let headers : [String : String] = [
            "X-Naver-Client-Id" : RequestToken.id,
            "X-Naver-Client-Secret" : RequestToken.secret
        ]
        _ = headers.map{ key, value in
            request.addValue(value, forHTTPHeaderField: key)
        }
        request.httpMethod = "POST"
        request.httpBody = parameters
        
        return self.session.dataTaskPublisher(for: request)
            .tryMap{ data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw URLError(.unknown)
                }
                switch httpResponse.statusCode {
                case 200..<300:
                    return data
                case 400..<500:
                    throw URLError(.clientCertificateRejected)
                case 500..<599:
                    throw URLError(.badServerResponse)
                default:
                    throw URLError(.unknown)
                }
            }
            .decode(type: decodingType, decoder: JSONDecoder())
            .mapError{$0 as! URLError}
            .eraseToAnyPublisher()
            
    }
}
