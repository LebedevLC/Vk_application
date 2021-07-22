//
//  AddFriendCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 13.07.2021.
//

import UIKit

final class AddFriendCell: UITableViewCell {
    
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    
    static let reusedIdentifier = "AddFriendCell"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
    }
   
    override func prepareForReuse() {
        super.prepareForReuse()
        self.nameLabel.text = nil
        self.avatarImageView.image = nil
    }

    func configure(friend: FriendModel) {
        avatarImageView.image = UIImage(named: friend.avatarName)
        nameLabel.text = friend.name
    }
    
    private func configureStatic() {
        avatarImageView.layer.borderWidth = 2
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.backgroundColor = UIColor.clear.cgColor
    }
}
