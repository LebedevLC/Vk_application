//
//  AllFriendsViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 10.07.2021.
//

import UIKit

class MyFriends: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var friends: [FriendModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friends = FriendStorage().friend
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "moveToPhoto",
            let destinationController = segue.destination as? PhotoFriendViewController,
            let indexPath = tableView.indexPathForSelectedRow
        else {
            return
        }
        let friend = friends[indexPath.row]
        destinationController.photoes = friend.photo
        destinationController.title = friend.name
        
    }
    
    @IBAction func refreshButtonPressed(_ sender: UIBarButtonItem) {
        tableView.reloadData()
    }
    
    @IBAction func addFriend(_ segue: UIStoryboardSegue) {
        guard
            segue.identifier == "addFriend",
            let sourceController = segue.source as? AddFriendsViewController,
            let indexPaths = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }
        let friend = sourceController.friends[indexPaths.row]
        
        if !friends.contains(where: {$0.name == friend.name}) {
            friends.append(friend)
            tableView.reloadData()
        }
    }
    
}

// MARK: - Extension MyFriends
extension MyFriends: UITabBarDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reusedIdentifire, for: indexPath) as? FriendsTableViewCell
        else {
            return UITableViewCell()
        }
        friends = friends.sorted(by: { $0.name < $1.name})
        let friend = friends[indexPath.row]
        cell.configure(friend: friend)
        cell.configureStatic()
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
    
}
