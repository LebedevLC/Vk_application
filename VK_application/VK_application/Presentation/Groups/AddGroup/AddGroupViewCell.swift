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
        groupAvatarImageView.layer.cornerRadius = 75/2
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tappedImage))
        groupAvatarImageView.addGestureRecognizer(tap)
        groupAvatarImageView.isUserInteractionEnabled = true
        }

    @objc func tappedImage() {
        UIView.animateKeyframes(withDuration: 0.6,
                                delay: 0,
                                options: [],
                                animations: {
                                    UIView.addKeyframe(withRelativeStartTime: 0,
                                                       relativeDuration: 0.5,
                                                       animations: {
                                                        self.groupAvatarImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.5,
                                                       relativeDuration: 0.6,
                                                       animations: {
                                                        self.groupAvatarImageView.transform = .identity
                                                       })
                                },
                                completion: nil)
    }
}
