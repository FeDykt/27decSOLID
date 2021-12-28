//
//  Reguest.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import Alamofire
import Foundation

protocol ReguestProtocol {
    func getReguest<Model: Codable>(_ url: String, completion: @escaping (Result<Model, Error>) -> Void)
}

struct Reguest: ReguestProtocol {
    func getReguest<Model: Codable>(_ url: String, completion: @escaping (Result<Model, Error>) -> Void) {
        AF.request(url).validate().responseDecodable(of: Model.self) { data in
            guard let data = data.value else { completion(.failure(data.error!)); return }
            completion(.success(data))
        }
    }
}
