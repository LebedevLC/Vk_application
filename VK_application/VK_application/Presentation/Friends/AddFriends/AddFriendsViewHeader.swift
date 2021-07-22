//
//  AddFriendsViewHeader.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 21.07.2021.
//

import UIKit

final class AddFriendsViewHeader: UITableViewHeaderFooterView {
    
    static let reusedIdentifier = "AddFriendsViewHeader"
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setView()
    }
    
    func configure(title: String) {
        label.text = title
    }
    
    
    private func setView() {
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
    }
    
    
}
