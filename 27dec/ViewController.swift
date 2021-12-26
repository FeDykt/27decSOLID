//
//  ViewController.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var reguest = DecodeToModel()
    var freeApps = [FreeApps]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    
        reguest.decodeToModel { result in
            self.freeApps.append(result)
        }
    }
    
}

