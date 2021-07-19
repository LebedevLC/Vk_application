//
//  FriendsTableViewCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 10.07.2021.
//

import UIKit

final class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var viewImageView: UIView!
    
    static let reusedIdentifire = "FriendsTableViewCell"
    
    func configure(friend: FriendModel) {
        avatarImageView.layer.borderColor = UIColor.random().cgColor  // просто для красоты
        avatarImageView.image = UIImage(named: friend.avatarName)
        nameLabel.text = friend.name
    }
    
    func configureStatic() {
        avatarImageView.layer.borderWidth = 2
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.layer.borderWidth = 2
        viewImageView.layer.cornerRadius = 50
        viewImageView.layer.backgroundColor = UIColor.clear.cgColor
    }
}





