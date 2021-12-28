//
//  Users.swift
//  27dec
//
//  Created by fedot on 28.12.2021.
//

import Foundation
  
struct UsersModel: Codable {
    let name:  String
    let username:  String
    let email: String
    let address: Address
}

struct Address: Codable {
    let city: String
}
