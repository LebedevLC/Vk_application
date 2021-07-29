//
//  NewsStorage.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 25.07.2021.
//

import Foundation

class NewsStorage {
    var news: [NewsModel]
    
    init() {
        news = [
            NewsModel(
                user: [FriendModel(name: "See Hinata",
                                   avatarName: "hinata",
                                   groupsUser: [
                                    GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                                    GroupModel(nameGroup: "Voleyball", avatarGroup: "group_volleyball"),
                                   ],
                                   photo: [
                                    PhotoModel(name: "My team", fileName: "group_volleyball", likeCount: 1, isLike: false)
                                   ]
                )],
                data: "27.07.21",
                newsImageName: "hinata2",
                text: "Снова тренируемся с друзьями.",
                newsDataModel: [
                    NewsDataModel(newsLikeCount: 1,
                                  newsRepostCount: 2,
                                  newsViewCount: 3,
                                  newsIsComment: false,
                                  newsIsLike: false,
                                  newsIsRepost: false
                    )
                ]),
                
            NewsModel(
                user: [FriendModel(name: "Tokuchi Toa",
                                   avatarName: "tokuchi",
                                   groupsUser: [
                                    GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                                    GroupModel(nameGroup: "Baseball", avatarGroup: "group_baseBall"),
                                   ],
                                   photo: [
                                    PhotoModel(name: "Baseball master", fileName: "tokuchi", likeCount: 9, isLike: false)
                                   ]
                )],
                data: "27.07.21",
                newsImageName: "tokuchi2",
                text: "Главный питчер команты Ликаонс уснул на скамейке!",
                newsDataModel: [
                    NewsDataModel(newsLikeCount: 2,
                                  newsRepostCount: 3,
                                  newsViewCount: 4,
                                  newsIsComment: false,
                                  newsIsLike: false,
                                  newsIsRepost: false)
                ]),
            
            NewsModel(
                user: [FriendModel(name: "Okabe Rintaro (aka Mad Scientist)",
                                   avatarName: "Okabe1",
                                   groupsUser: [
                                       GroupModel(nameGroup: "Anime", avatarGroup: "group_anime"),
                                       GroupModel(nameGroup: "Tru detectiv", avatarGroup: "group_trueDetectiv")
                                   ],
                                   photo: [
                                       PhotoModel(name: "Мы забираем машину времени", fileName: "Okabe3", likeCount: 14, isLike: false)
                                   ]
                       )],
                data: "27.07.21",
                newsImageName: "Okabe2",
                text: "Кажется в этом времени я еще не появляся. Здравствуйте, я Джон Тайтор - ученый и путешественник во времени. Из-за интереса к одному эксперименту проводимого мной и другом Дару, к нашей лаборатории присоединилась Курису. Вскоре после этого, мы открыли, что созданная нами Мобиловолновка – это машина времени. С помощью Курису, я начал проводить эксперименты с Ди-мейлами (D-mail – сокращение от DeLorean Mail). Но своими действиями мы запустили череду несчастий, связанных с изменением прошлого, а следовательно и будущего.",
                newsDataModel: [
                    NewsDataModel(newsLikeCount: 3,
                                  newsRepostCount: 4,
                                  newsViewCount: 5,
                                  newsIsComment: false,
                                  newsIsLike: false,
                                  newsIsRepost: false)
                ]),
        ]
    }
}
