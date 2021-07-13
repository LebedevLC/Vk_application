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
    
    static let identifier = "PhotoCollectionViewCell"
    
    func configure(photo: PhotoModel) {
        photoNameLabel.text = photo.name
        photoImageView.image = UIImage(named: photo.fileName)
    }
}
