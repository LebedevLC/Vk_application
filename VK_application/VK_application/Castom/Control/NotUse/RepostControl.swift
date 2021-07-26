//
//  RepostControl.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 25.07.2021.
//

import UIKit

final class RepostControl: UIControl {
    
    var imageView = UIImageView()
    var repostCountLabel = UILabel()
    
    var repostCounter: Int = 0
    var isRepost: Bool = false
    
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
        repostCountLabel.text = String(repostCounter)
        imageView.frame = bounds
    }
    
    private func setRepost(count: Int) {
        setRepostCounterLabel()
    }
    
    private func setView() {
        self.addSubview(imageView)
        self.addTarget(self, action: #selector(tapControl), for: .touchUpInside)
        
        imageView.tintColor = UIColor.black
        imageView.image = UIImage(systemName: "arrowshape.turn.up.right")
        
        setRepostCounterLabel()
    }
    
    private func setRepostCounterLabel() {
        addSubview(repostCountLabel)
        UIView.transition(with: repostCountLabel,
                          duration: 0.2,
                          options: .transitionFlipFromLeft,
                          animations: {[unowned self] in self.repostCountLabel.text = String(repostCounter)}
        )
        repostCountLabel.textColor = UIColor.black
        repostCountLabel.translatesAutoresizingMaskIntoConstraints = false
        repostCountLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -2).isActive = true
        repostCountLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
    }
    
    @objc func tapControl() {
        isRepost.toggle()
        if isRepost {
            imageView.image = UIImage(systemName: "arrowshape.turn.up.right.fill")
            repostCounter += 1
            setRepostCounterLabel()
        } else {
            imageView.image = UIImage(systemName: "arrowshape.turn.up.right")
            repostCounter -= 1
            setRepostCounterLabel()
        }
    }
    
}
