//
//  AddGroupViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 13.07.2021.
//

import UIKit

final class AddGroupViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var groups = [GroupModel]()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        groups = GroupStorage().allGroups
    }
}

extension AddGroupViewController: UITabBarDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: AddGroupViewCell.reusedIdentifire, for: indexPath) as? AddGroupViewCell
        else {
            return UITableViewCell()
        }
        let group = groups[indexPath.row]
        cell.configure(group: group)
        return cell
    }
     
}
