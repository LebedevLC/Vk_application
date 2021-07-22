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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
    }
    
    func configure(group: GroupModel) {
        groupAvatarImageView.image = UIImage(named: group.avatarGroup)
        nameGroupLabel.text = group.nameGroup
    }
    
    func configureStatic() {
        groupAvatarImageView.layer.borderWidth = 2
        groupAvatarImageView.layer.borderColor = UIColor.white.cgColor
        groupAvatarImageView.layer.cornerRadius = 35
    }
}
