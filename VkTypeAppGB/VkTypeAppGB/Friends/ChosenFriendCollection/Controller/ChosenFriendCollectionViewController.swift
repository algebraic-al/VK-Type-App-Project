//
//  ChosenFriendCollectionViewController.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 18.06.2021.
//

import UIKit

final class ChosenFriendCollectionViewController: UICollectionViewController {
    
    
    var friendPhotos: [PhotoModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension ChosenFriendCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        friendPhotos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChosenFriendCollectionCell.identifier, for: indexPath) as! ChosenFriendCollectionCell
        
        cell.configure(friendPhotos[indexPath.row])
        
        return cell
    }
    
    
}
