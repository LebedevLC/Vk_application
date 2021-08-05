//
//  NewAvatarView.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 05.08.2021.
//

import UIKit

final class NewAvatarView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.shadowOpacity = 0.9
        self.layer.cornerRadius = 50
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = .zero
    }
}
