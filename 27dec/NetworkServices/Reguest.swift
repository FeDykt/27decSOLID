//
//  Reguest.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import Alamofire

protocol ReguestProtocol {
    func getReguest<Model: Codable>(_ url: String, completion: @escaping (Model) -> Void)
}

struct Reguest: ReguestProtocol {
    func getReguest<Model: Codable>(_ url: String, completion: @escaping (Model) -> Void) {
        AF.request(url).validate().responseDecodable(of: Model.self) { data in
            guard let data = data.value else { return }
            completion(data)
        }
    }
}
