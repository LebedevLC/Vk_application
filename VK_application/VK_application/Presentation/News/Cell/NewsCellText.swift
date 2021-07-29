//
//  NewsCellText.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 27.07.2021.
//

import UIKit

final class NewsCellText: UITableViewCell {
    
    @IBOutlet var labelText: UILabel!
    
    static let reusedIdentifier = "NewsCellText"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
//        labelText.frame = bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        labelText.text = nil
    }
    
    func configure(news: NewsModel) {
        labelText.text = news.text
        
    }
    
    private func configureStatic() {
        //        newsImageView.layer.borderWidth = 2
        //        newsImageView.layer.borderColor = UIColor.black.cgColor
    }
}
