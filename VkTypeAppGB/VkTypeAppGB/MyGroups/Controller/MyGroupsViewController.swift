//
//  MyGroupsViewController.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 11.06.2021.
//

import UIKit

final class MyGroupsViewController: UIViewController {
    
    @IBOutlet weak private var tableView: UITableView!
    let groups = GroupStorage.shared.groups
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MyGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyGroupsTableViewCell.identifier) as! MyGroupsTableViewCell
        
        cell.configure(groups[indexPath.row])
        
        return cell
    }
    
    
    
    
}

