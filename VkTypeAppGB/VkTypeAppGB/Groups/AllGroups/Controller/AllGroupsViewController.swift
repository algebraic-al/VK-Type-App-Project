//
//  AllGroupsViewController.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 16.06.2021.
//

import UIKit

final class AllGroupsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let allGroups = GroupStorage.shared.searchGroups
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AllGroupsViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: AllGroupsTableViewCell.identifier) as! AllGroupsTableViewCell
        
        cell.configure(allGroups[indexPath.row])
        
        return cell
    }
    
    
}
