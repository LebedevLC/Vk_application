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
            FriendModel(name: "Uchiha Sasuke", avatarName: "Sasuke0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Sasuke1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke7", likeCount: 7, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke8", likeCount: 8, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke9", likeCount: 9, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke10", likeCount: 10, isLike: false),
                        ]
            ),
            
            FriendModel(name: "See Hinata", avatarName: "Hinata0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "group_volleyball", likeCount: 0, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata7", likeCount: 7, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata8", likeCount: 8, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Yagami Ligth", avatarName: "Light0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Light1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Light2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Light3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Light4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Light5", likeCount: 5, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Haruno Sakura", avatarName: "Sakura0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Beauty", fileName: "Sakura2", likeCount: 10, isLike: false),
                            PhotoModel(name: "Neko", fileName: "Sakura3", likeCount: 3, isLike: false),
                            PhotoModel(name: "Art", fileName: "Sakura4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura7", likeCount: 7, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Okabe Rintaro",
                        avatarName: "Okabe0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Мы забираем машину времени", fileName: "Okabe3", likeCount: 14, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe7", likeCount: 7, isLike: false),
                        ]
            )
            
        ]
        
//MARK:- AllFriend
        
        allFriends = [
            FriendModel(name: "Uzumaki Naruto", avatarName: "Naruto0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Naruto1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto7", likeCount: 7, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto8", likeCount: 8, isLike: false),
                            PhotoModel(name: "", fileName: "Naruto9", likeCount: 9, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Sudzumia Haruhi", avatarName: "Haruhi0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Shcool days", avatarGroup: "group_shcoolDays")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Haruhi1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "group_shcoolDays", likeCount: 0, isLike: false),
                            PhotoModel(name: "", fileName: "Haruhi2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Haruhi3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Haruhi4", likeCount: 4, isLike: false),
                        ]
            ),
            
            FriendModel(name: "See Hinata", avatarName: "Hinata0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "group_volleyball", likeCount: 0, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata7", likeCount: 7, isLike: false),
                            PhotoModel(name: "", fileName: "Hinata8", likeCount: 8, isLike: false),
                        ]
            ),
            
            FriendModel(name: "RosKomNadzor", avatarName: "r_tyan0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "RKN", avatarGroup: "group_RKN")
                        ],
                        photo: [
                            PhotoModel(name: "I am", fileName: "r_tyan0", likeCount: 4, isLike: false),
                            PhotoModel(name: "Anime hater", fileName: "group_RKN", likeCount: 4, isLike: false)
                        ]
            ),
            
            FriendModel(name: "Haruno Sakura", avatarName: "Sakura0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "Beauty", fileName: "Sakura2", likeCount: 10, isLike: false),
                            PhotoModel(name: "Neko", fileName: "Sakura3", likeCount: 3, isLike: false),
                            PhotoModel(name: "Art", fileName: "Sakura4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Sakura7", likeCount: 7, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Uchiha Sasuke", avatarName: "Sasuke0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Sasuke1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke7", likeCount: 7, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke8", likeCount: 8, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke9", likeCount: 9, isLike: false),
                            PhotoModel(name: "", fileName: "Sasuke10", likeCount: 10, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Uchiha Itachi", avatarName: "Itachi0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Itachi1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Itachi2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Itachi3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Itachi4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Itachi5", likeCount: 5, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Yagami Ligth", avatarName: "Light0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "", fileName: "Light1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Light2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Light3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Light4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Light5", likeCount: 5, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Okabe Rintaro (From Future)",
                        avatarName: "Okabe0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                        ],
                        photo: [
                            PhotoModel(name: "Мы забираем машину времени", fileName: "Okabe3", likeCount: 14, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe1", likeCount: 1, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe5", likeCount: 5, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe6", likeCount: 6, isLike: false),
                            PhotoModel(name: "", fileName: "Okabe7", likeCount: 7, isLike: false),
                        ]
            ),
            
            FriendModel(name: "Tokuchi Toa", avatarName: "Tokuchi0",
                        groupsUser: [
                            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                            GroupModel(nameGroup: "Baseball", avatarGroup: "group_baseBall"),
                        ],
                        photo: [
                            PhotoModel(name: "Baseball master", fileName: "Tokuchi1", likeCount: 9, isLike: false),
                            PhotoModel(name: "", fileName: "Tokuchi2", likeCount: 2, isLike: false),
                            PhotoModel(name: "", fileName: "Tokuchi3", likeCount: 3, isLike: false),
                            PhotoModel(name: "", fileName: "Tokuchi4", likeCount: 4, isLike: false),
                            PhotoModel(name: "", fileName: "Tokuchi5", likeCount: 5, isLike: false),
                        ]
            )
            
            
        ]
    }
}
