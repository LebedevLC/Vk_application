//
//  FriendStorage.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 10.07.2021.
//

import Foundation

class FriendStorage {
    
//    static var shared = FriendStorage()   // singletone
    
    var friend: [FriendModel]
    var allFriends: [FriendModel]

    init() {
        friend = [
            FriendModel(name: "Uchiha Sasuke", avatarName: "sasuke",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Sasuke1", likeCount: 1, isLike: false)
                        ]
            ),
            
            FriendModel(name: "See Hinata", avatarName: "hinata",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                        ],
                        photo: [
                            PhotoModel(name: "My team", fileName: "group_volleyball", likeCount: 1, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Yagami Ligth", avatarName: "Ligth",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Who I am", fileName: "Kira", likeCount: 8, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Okabe Rintaro",
                        avatarName: "Okabe1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Мы забираем машину времени", fileName: "Okabe3", likeCount: 14, isLike: false)
                        ]
            )
            
        ]
        
        allFriends = [
            FriendModel(name: "Uzumaki Naruto", avatarName: "naruto",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Sanin-mode", fileName: "naruto", likeCount: 0, isLike: false),
                            PhotoModel(name: "Team 7", fileName: "naruto2", likeCount: 0, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Sudzumia Haruhi", avatarName: "Haruhi",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Shcool days", avatarGroup: "group_shcoolDays")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Haruhi", likeCount: 3, isLike: false),
                            PhotoModel(name: "My friend", fileName: "group_shcoolDays", likeCount: 2, isLike: false)
                        ]
            ),
            
            FriendModel(name: "See Hinata", avatarName: "hinata",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                        ],
                        photo: [
                            PhotoModel(name: "My team", fileName: "group_volleyball", likeCount: 1, isLike: false)
                        ]
            ),
            
            FriendModel(name: "RosKomNadzor", avatarName: "r_tyan",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "RKN", avatarGroup: "group_RKN")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "r_tyan", likeCount: 4, isLike: false),
                            PhotoModel(name: "Anime hater", fileName: "group_RKN", likeCount: 4, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Haruno Sakura", avatarName: "Sakura1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Beauty", fileName: "Sakura2", likeCount: 10, isLike: false),
                            PhotoModel(name: "Neko", fileName: "Sakura3", likeCount: 3, isLike: false),
                            PhotoModel(name: "Art", fileName: "Sakura4", likeCount: 6, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Uchiha Sasuke", avatarName: "sasuke",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Sasuke1", likeCount: 1, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Uchiha Itachi", avatarName: "Itachi1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "Itachi", likeCount: 4, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Yagami Ligth", avatarName: "Ligth",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Who I am", fileName: "Kira", likeCount: 8, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Okabe Rintaro", //(aka Hououin Kyouma, aka Mad Scientist)
                        avatarName: "Okabe1",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Мы забираем машину времени", fileName: "Okabe3", likeCount: 14, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Tokuchi Toa", avatarName: "tokuchi",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Baseball", avatarGroup: "group_baseBall"),
                        ],
                        photo: [
                            PhotoModel(name: "Baseball master", fileName: "tokuchi", likeCount: 9, isLike: false)
                        ]
            )
            
            
        ]
    }
}
