//
//  DecodeToModel.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import Foundation

class DecodeToModel {
    var reguest: ReguestProtocol
    init(reguest: ReguestProtocol = Reguest()) {
        self.reguest = reguest
    }
    
    
    func decodeToModel(completion: @escaping (FreeApps) -> Void) {
        let url = "https://rss.applemarketingtools.com/api/v2/ru/apps/top-free/10/apps.json"
        reguest.getReguest(url, completion: completion)
    }
}
