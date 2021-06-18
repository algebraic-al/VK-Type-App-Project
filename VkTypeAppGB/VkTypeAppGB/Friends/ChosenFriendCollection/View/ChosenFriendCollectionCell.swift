//
//  ChosenFriendCollectionCell.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 18.06.2021.
//

import UIKit

final class ChosenFriendCollectionCell: UICollectionViewCell {
    
    static let identifier = "ChosenFriendCollectionCell"
    
    @IBOutlet weak var chosenFriendPhoto: UIImageView!
    
    func configure(_ photo: PhotoModel) {
        chosenFriendPhoto.image = UIImage(named: photo.image)
    }
}
