//
//  AddFriendsViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 10.07.2021.
//

import UIKit

final class AddFriendsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var friends = [FriendModel]()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        friends = FriendStorage().allFriend
    }
}

extension AddFriendsViewController: UITabBarDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: AddFriendsViewCell.reusedIdentifire, for: indexPath) as? AddFriendsViewCell
        else {
            return UITableViewCell()
        }
        let friend = friends[indexPath.row]
        cell.configure(friend: friend)
        return cell
    }
    
}
