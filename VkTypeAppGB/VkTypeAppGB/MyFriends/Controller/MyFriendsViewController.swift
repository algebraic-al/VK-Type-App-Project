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
    let friends = UserStorage.shared.users
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension MyFriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath) as! FriendsTableViewCell
           
        cell.configure(friends[indexPath.row])
        
        return cell
    }
    
    
}
