//
//  NewsHeader.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 23.07.2021.
//

import UIKit

final class NewsHeader: UITableViewHeaderFooterView {
    
    static let reusedIdentifier = "NewsHeader"
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = label.font.withSize(18)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    private var imageView = UIImageView()
//    private let avatarView = AvatarView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    func configure(newsText: String) {
        label.text = newsText
    }
    
    private func setView() {
//        contentView.addSubview(label)
        contentView.addSubview(imageView)
//        imageView.frame = CGRect(x: 4, y: 4, width: 50, height: 50)
//        avatarView.addSubview(imageView)
//        NSLayoutConstraint.activate([
//            label.topAnchor.constraint(equalTo: avatarView.topAnchor, constant: 8),
////            label.bottomAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 0),
//            label.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor, constant: 16),
//            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
//        ])
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            imageView.heightAnchor.constraint(equalToConstant: 10),
            imageView.widthAnchor.constraint(equalToConstant: 20)
        ])
//        NSLayoutConstraint.activate([
//            imageView.topAnchor.constraint(equalTo: avatarView.topAnchor),
//            imageView.bottomAnchor.constraint(equalTo: avatarView.bottomAnchor),
//            imageView.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: avatarView.trailingAnchor),
//            imageView.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor),
//            imageView.centerXAnchor.constraint(equalTo: avatarView.centerXAnchor),
//        ])
        imageView.image = UIImage(systemName: "heart")
        contentView.backgroundColor = .white
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
    }
    
    
}
