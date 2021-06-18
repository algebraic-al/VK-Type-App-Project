//
//  MyGroupsTableViewCell.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 11.06.2021.
//

import UIKit

final class MyGroupsTableViewCell: UITableViewCell {
    
    static let identifier = "MyGroupsTableViewCell"
    
    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var groupDescription: UILabel!
    
    func configure(_ group: GroupModel){
        groupImageView.image = UIImage(named: group.groupImage)
        groupName.text = group.name
        groupDescription.text = group.description
    }
    
}
