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
        
        // добавляем обработку нажатий на UIImage
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tappedImage))
        groupImageView.addGestureRecognizer(tap)
        groupImageView.isUserInteractionEnabled = true
        }

    @objc func tappedImage() {
        UIView.animateKeyframes(withDuration: 0.6,
                                delay: 0,
                                options: [.repeat],  // уж очень красиво с репитом выглядит, будто сердце бьется
                                animations: {
                                    UIView.addKeyframe(withRelativeStartTime: 0,
                                                       relativeDuration: 0.5,
                                                       animations: {
                                                        self.groupImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.5,
                                                       relativeDuration: 0.6,
                                                       animations: {
                                                        self.groupImageView.transform = .identity
                                                       })
                                },
                                completion: nil)
    }
    
}
