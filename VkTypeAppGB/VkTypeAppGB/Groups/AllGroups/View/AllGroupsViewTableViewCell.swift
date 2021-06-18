//
//  AllGroupsViewTableViewCell.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 17.06.2021.
//

import UIKit

final class AllGroupsTableViewCell: UITableViewCell {
    
    static let identifier = "AllGroupsTableViewCell"
    
    @IBOutlet weak var searchGroupImage: UIImageView!
    @IBOutlet weak var searchGroupName: UILabel!
    @IBOutlet weak var searchGroupDescription: UILabel!
    
    func configure(_ group: GroupModel){
        searchGroupImage.image = UIImage(named: group.groupImage)
        searchGroupName.text = group.name
        searchGroupDescription.text = group.description
    }
    
}
