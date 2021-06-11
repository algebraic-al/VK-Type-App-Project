//
//  FriendsTableViewCell.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 08.06.2021.
//

import Foundation
import UIKit

final class FriendsTableViewCell: UITableViewCell {
    
    static let identifier = "FriendsTableViewCell"
    
    @IBOutlet weak var friendAvatarImage: UIImageView!
    
    @IBOutlet weak var friendName: UILabel!
    
    func configure(_ friend: UserModel) {
        friendAvatarImage.image = UIImage(named: friend.avatarImageName)
        friendName.text = friend.name
    }
}
