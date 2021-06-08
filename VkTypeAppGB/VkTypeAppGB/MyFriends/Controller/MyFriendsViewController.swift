//
//  MyFriendsViewController.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 08.06.2021.
//

import Foundation
import UIKit

final class MyFriendsViewController: UIViewController {
    @IBOutlet weak private var tableView: UITableView!
    
}

extension MyFriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath) as! FriendsTableViewCell
           
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    
    
}
