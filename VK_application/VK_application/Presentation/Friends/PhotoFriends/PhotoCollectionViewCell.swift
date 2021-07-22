//
//  PhotoCollectionViewCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 11.07.2021.
//

import UIKit

final class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var photoNameLabel: UILabel!
    @IBOutlet var likeControl2: LikeControl2!
    
    static let identifier = "PhotoCollectionViewCell"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
    }
    
    func configure(photo: PhotoModel) {
        photoNameLabel.text = photo.name
        photoImageView.image = UIImage(named: photo.fileName)
    }
    
    func configureStatic() {
        photoImageView.layer.borderWidth = 3
        photoImageView.layer.borderColor = UIColor.white.cgColor
    }
    
    func configureLikeControl(photo: PhotoModel) {
        likeControl2.isLike = photo.isLike
        likeControl2.likeCounter = photo.likeCount
    }
    
}
