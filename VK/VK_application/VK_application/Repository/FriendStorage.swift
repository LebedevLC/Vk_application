//
//  FriendStorage.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 10.07.2021.
//

import Foundation

class FriendStorage {
    let friend: [FriendModel]
    let allFriend: [FriendModel]
    
    init() {
        friend = [
            FriendModel(name: "Sakura Haruno", avatarName: "Sakura1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Beauty", fileName: "Sakura2"),
                            PhotoModel(name: "Neko", fileName: "Sakura3"),
                            PhotoModel(name: "Art", fileName: "Sakura4")
                        ]
            ),
            
            FriendModel(name: "Hinata See", avatarName: "hinata",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                        ],
                        photo: [
                            PhotoModel(name: "My team", fileName: "group_volleyball")
                        ]
            ),
            
            FriendModel(name: "Yagami Ligth", avatarName: "Ligth",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Who I am", fileName: "Kira")
                        ]
            ),
            
            FriendModel(name: "RosKomNadzor", avatarName: "r_tyan",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "RKN", avatarGroup: "group_RKN")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "r_tyan"),
                            PhotoModel(name: "Anime hater", fileName: "group_RKN")
                        ]
            )
            
        ]
        
        allFriend = [
            FriendModel(name: "Naruto Uzumaki", avatarName: "naruto",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Sanin-mode", fileName: "naruto"),
                            PhotoModel(name: "Team 7", fileName: "naruto2")
                        ]
            ),
            
            FriendModel(name: "Haruhi Sudzumia", avatarName: "Haruhi",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Shcool days", avatarGroup: "group_shcoolDays")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Haruhi"),
                            PhotoModel(name: "My friend", fileName: "group_shcoolDays")
                        ]
            ),
            
            FriendModel(name: "Hinata See", avatarName: "hinata",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                        ],
                        photo: [
                            PhotoModel(name: "My team", fileName: "group_volleyball")
                        ]
            ),
            
            FriendModel(name: "RosKomNadzor", avatarName: "r_tyan",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "RKN", avatarGroup: "group_RKN")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "r_tyan"),
                            PhotoModel(name: "Anime hater", fileName: "group_RKN")
                        ]
            ),
            
            FriendModel(name: "Sakura Haruno", avatarName: "Sakura1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Beauty", fileName: "Sakura2"),
                            PhotoModel(name: "Neko", fileName: "Sakura3"),
                            PhotoModel(name: "Art", fileName: "Sakura4")
                        ]
            ),
            
            FriendModel(name: "Sasuke Uchiha", avatarName: "sasuke",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Sasuke1")
                        ]
            ),
            
            FriendModel(name: "Itachi Uchiha", avatarName: "Itachi1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Itachi")
                        ]
            ),
            
            FriendModel(name: "Yagami Ligth", avatarName: "Ligth",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Who I am", fileName: "Kira")
                        ]
            ),
            
            FriendModel(name: "Tokuchi Toa", avatarName: "tokuchi",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Baseball", avatarGroup: "group_baseBall"),
                        ],
                        photo: [
                            PhotoModel(name: "Baseball master", fileName: "tokuchi")
                        ]
            )
            
            
        ]
    }
}
