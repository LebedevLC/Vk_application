//
//  NewsCellHeader.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 27.07.2021.
//

import UIKit

final class NewsCellHeader: UITableViewCell {
    
    
    @IBOutlet var avatarViewCastom: AvatarView!
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelDate: UILabel!
    
    static let reusedIdentifier = "NewsCellHeader"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
        avatarViewCastom.frame = bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImage.image = nil
        labelName.text = nil
        labelDate.text = nil
    }
    
    func configure(friend: FriendModel, photo: PhotoModel, newsData: NewsModel) {
        avatarImage.image = UIImage(named: photo.fileName)
        labelName.text = friend.name
        labelDate.text = newsData.data
        
    }
    
    private func configureStatic() {
        avatarImage.layer.cornerRadius = 25
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        //        newsImageView.layer.borderWidth = 2
        //        newsImageView.layer.borderColor = UIColor.black.cgColor
    }
}
