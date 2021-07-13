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
    
    static let reusedIdentifire = "FriendsTableViewCell"
    
    func configure(friend: FriendModel) {
        avatarImageView.image = UIImage(named: friend.avatarName)
        avatarImageView.layer.cornerRadius = 50
        nameLabel.text = friend.name
    }
}
