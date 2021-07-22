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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
    }
    
    func configure(group: GroupModel) {
        groupImageView.image = UIImage(named: group.avatarGroup)
        groupNameLabel.text = group.nameGroup
    }
    
    func configureStatic() {
        groupImageView.layer.borderWidth = 2
        groupImageView.layer.borderColor = UIColor.white.cgColor
        groupImageView.layer.cornerRadius = 50
    }
    
}
