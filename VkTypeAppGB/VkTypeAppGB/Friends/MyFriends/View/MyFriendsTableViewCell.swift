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
   // var shadow: UIImageView!
    
    @IBOutlet weak var friendName: UILabel!
    
    func configure(_ friend: UserModel) {
        friendAvatarImage.image = UIImage(named: friend.avatarImageName)
        friendAvatarImage.layer.cornerRadius = friendAvatarImage.frame.size.width/2
//        friendAvatarImage.layer.shadowRadius = 20
//        friendAvatarImage.addSubview(shadow)
//        shadow.layer.shadowOffset = CGSize(width: 30, height: 30)
//        shadow.layer.shadowColor = UIColor.blue.cgColor
//        shadow.layer.shadowOpacity = 50
        
        friendName.text = friend.name
    }
    
    
    
//    func cicleImage(_ image: UIImageView, rect: CGRect){
//
//        guard let context = UIGraphicsGetCurrentContext() else { return
//        }
//
//        context.setStrokeColor(UIColor.black.cgColor)
//       let circle = context.strokeEllipse(in: CGRect(x: rect.midX, y: rect.midY, width: 30, height: 30)
//
//        image.layer.bounds = circle
//
//    }
    
    
}
