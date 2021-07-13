//
//  AddGroupViewCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 13.07.2021.
//

import UIKit

final class AddGroupViewCell: UITableViewCell {
    
    @IBOutlet var groupAvatarImageView: UIImageView!
    @IBOutlet var nameGroupLabel: UILabel!
    
    static let reusedIdentifire = "AddGroupViewCell"
    
    func configure(group: GroupModel) {
        groupAvatarImageView.image = UIImage(named: group.avatarGroup)
        groupAvatarImageView.layer.cornerRadius = 35
        nameGroupLabel.text = group.nameGroup
    }
}
