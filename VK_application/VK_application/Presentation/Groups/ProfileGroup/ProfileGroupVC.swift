//
//  ProfileGroupVC.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 08.08.2021.
//

import UIKit

class ProfileGroupVC: UIViewController {
    
    @IBOutlet weak private var logoImageView: UIImageView!
    @IBOutlet weak private var avatarGroupImageView: UIImageView!
    @IBOutlet weak private var nameGroupLabel: UILabel!
    @IBOutlet weak private var shortDescriptionLabel: UILabel!
    @IBOutlet weak private var subscribersCountLabel: UILabel!
    @IBOutlet weak private var fullDescriptionLabel: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    
    var groupData: GroupModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        setUI()
    }
    
    private func setData() {
        logoImageView.image = UIImage(named: groupData?.logoImage ?? "Logo0")
        avatarGroupImageView.image = UIImage(named: groupData?.avatarGroup ?? "r_tyan0")
        nameGroupLabel.text = groupData?.nameGroup ?? "Имя группы отсутсвует"
        shortDescriptionLabel.text = groupData?.shortDescription ?? "Краткое описание"
        subscribersCountLabel.text = String(groupData!.subscribersCount) + " подписчиков"
        fullDescriptionLabel.text = groupData?.fullDescription ?? "Подробное описание группы"
    }
    
    private func setUI() {
        avatarGroupImageView.layer.cornerRadius = 50
        subscribeButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func subscribeButtonPressed(_ sender: UIButton) {
    }
}
