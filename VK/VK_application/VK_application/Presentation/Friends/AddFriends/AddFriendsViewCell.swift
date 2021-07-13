//
//  AddFriendsViewCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 13.07.2021.
//

import UIKit

final class AddFriendsViewCell: UITableViewCell {
    
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    
    static let reusedIdentifire = "AddFriendsViewCell"
    
    func configure(friend: FriendModel) {
        avatarImageView.image = UIImage(named: friend.avatarName)
        avatarImageView.layer.cornerRadius = 35
        nameLabel.text = friend.name
    }
}
