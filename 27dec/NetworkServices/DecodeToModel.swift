//
//  DecodeToModel.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import Foundation

class DecodeToModel {
    var reguest: ReguestProtocol?
    init(reguest: ReguestProtocol = Reguest()) {
        self.reguest = reguest
    }
    
    func getUsers(completion: @escaping (Result<[UsersModel], Error>) -> Void) {
        let url = "https://jsonplaceholder.typicode.com/users"
        reguest?.getReguest(url, completion: completion)
    }
}
