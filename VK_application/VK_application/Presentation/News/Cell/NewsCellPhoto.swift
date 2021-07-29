//
//  NewsCell.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 23.07.2021.
//

import UIKit

final class NewsCellPhoto: UITableViewCell {
    
    @IBOutlet private var newsImageView: UIImageView!
    
    static let reusedIdentifier = "NewsCellPhoto"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
        newsImageView.frame = bounds
    }
   
    override func prepareForReuse() {
        super.prepareForReuse()
        self.newsImageView.image = nil
    }

    func configure(news: NewsModel) {
        newsImageView.image = UIImage(named: news.newsImageName)
    }
    
    private func configureStatic() {
        newsImageView.layer.borderWidth = 2
        newsImageView.layer.borderColor = UIColor.black.cgColor
    }
}
