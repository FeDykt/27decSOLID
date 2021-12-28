//
//  ViewController.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    private var tableView = UITableView()
    
    var reguest = DecodeToModel()
    var usersModel: [UsersModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        getReguest()
        createTableView()
    }
    
    private func createTableView() {
        self.tableView = UITableView(frame: view.bounds, style: .plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }
    
    private func getReguest() {
        reguest.getUsers { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let success):
                self.usersModel = success
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let users = usersModel[indexPath.row]
        cell.textLabel?.text = users.username
        return cell
    }
}
