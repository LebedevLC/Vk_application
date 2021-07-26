//
//  CommentControl.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 25.07.2021.
//

import UIKit

final class CommentControl: UIControl {
    
    var imageView = UIImageView()
    var isComment: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    private func setView() {
        self.addSubview(imageView)
        self.addTarget(self, action: #selector(tapControl), for: .touchUpInside)
        imageView.tintColor = UIColor.black
        imageView.image = UIImage(systemName: "text.bubble")
    }
    
    @objc func tapControl() {
        isComment.toggle()
        if isComment {
            imageView.image = UIImage(systemName: "text.bubble.fill")
        } else {
            imageView.image = UIImage(systemName: "text.bubble")
        }
    }
    
}
