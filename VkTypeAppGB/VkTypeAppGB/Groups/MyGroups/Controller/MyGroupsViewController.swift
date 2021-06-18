//
//  MyGroupsViewController.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 11.06.2021.
//

import UIKit

final class MyGroupsViewController: UIViewController {
    
    @IBOutlet weak private var tableView: UITableView!
    var groups = GroupStorage.shared.groups
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Добавляем возможность добавить группу к нашим группам
    @IBAction func addGroup(_ segue: UIStoryboardSegue) {
        guard
            let sourceController = segue.source as? AllGroupsViewController,
            let indexPressedCell = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }
        
        let group = sourceController.allGroups[indexPressedCell.row]
        
        if !groups.contains(where: { $0.name == group.name }) {
            groups.append(group)
            tableView.reloadData()
        }
        
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
    
    // Настраиваем метод удаления даных
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    
    
}

