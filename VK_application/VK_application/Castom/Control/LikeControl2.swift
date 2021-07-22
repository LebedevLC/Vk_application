//
//  LikeControl2.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 18.07.2021.
//

import UIKit

final class LikeControl2: UIControl {
    
    var imageView = UIImageView()
    var likeCountLabel = UILabel()
    
    var likeCounter: Int = 0
    var isLike: Bool = false
    
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
        likeCountLabel.text = String(likeCounter)
        imageView.frame = bounds
    }
    
    private func setLike(count: Int) {
        setLikeCounterLabel()
    }
    
    private func setView() {
        self.addSubview(imageView)
        self.addTarget(self, action: #selector(tapControl), for: .touchUpInside)
        
        imageView.tintColor = UIColor.red
        imageView.image = UIImage(systemName: "heart")
        
        setLikeCounterLabel()
    }
    
    private func setLikeCounterLabel() {
        addSubview(likeCountLabel)
        UIView.transition(with: likeCountLabel,
                          duration: 0.2,
                          options: .transitionFlipFromLeft,
                          animations: {[unowned self] in self.likeCountLabel.text = String(likeCounter)}
        )
        likeCountLabel.textColor = UIColor.red
        likeCountLabel.translatesAutoresizingMaskIntoConstraints = false
        likeCountLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -2).isActive = true
        likeCountLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        
    }
    
    @objc func tapControl() {
        isLike.toggle()
        if isLike {
            imageView.image = UIImage(systemName: "heart.fill")
            likeCounter += 1                                      // здесь хорошо бы сделать изменения в хранилище
            setLikeCounterLabel()
        } else {
            imageView.image = UIImage(systemName: "heart")
            likeCounter -= 1                                      // и здесь
            setLikeCounterLabel()
        }
    }
    
}
