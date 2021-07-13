//
//  UserGroupTableViewCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 13.07.2021.
//

import UIKit

final class UserGroupTableViewCell: UITableViewCell {
    
    @IBOutlet var groupImageView: UIImageView!
    @IBOutlet var groupNameLabel: UILabel!
    
    static let reusedIdentifire = "UserGroupTableViewCell"
    
    func configure(group: GroupModel) {
        groupImageView.image = UIImage(named: group.avatarGroup)
        groupImageView.layer.cornerRadius = 50
        groupNameLabel.text = group.nameGroup
    }
}
