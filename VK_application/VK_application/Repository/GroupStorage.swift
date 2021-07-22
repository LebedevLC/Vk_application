//
//  GroupStorage.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 10.07.2021.
//

import Foundation

class GroupStorage{
    let group: [GroupModel]
    let allGroups: [GroupModel]
    
    init() {
        group = [
            GroupModel(nameGroup: "RKN", avatarGroup: "group_RKN")
        ]
        allGroups = [
            GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
            GroupModel(nameGroup: "Konoha", avatarGroup: "group_konoha"),
            GroupModel(nameGroup: "Akatsuki", avatarGroup: "group_akatsuku"),
            GroupModel(nameGroup: "Baseball", avatarGroup: "group_baseBall"),
            GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
            GroupModel(nameGroup: "Shcool days", avatarGroup: "group_shcoolDays"),
            GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv"),
            GroupModel(nameGroup: "RKN", avatarGroup: "group_RKN")
        ]
    }
}
