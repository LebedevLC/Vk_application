//
//  NewsViewController.swift
//  VK_application
//
//  Шикарно с третьего раза Created by Сергей Чумовских  on 23.07.2021.
//

import UIKit

final class NewsViewController: UIViewController {
    
    @IBOutlet var newsTableView: UITableView!
    
    private var news: [NewsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        newsTableView.register(UINib(nibName: NewsCellHeader2.reusedIdentifier, bundle: nil),
                               forCellReuseIdentifier: NewsCellHeader2.reusedIdentifier)
        
        newsTableView.register(UINib(nibName: NewsCellText.reusedIdentifier, bundle: nil),
                               forCellReuseIdentifier: NewsCellText.reusedIdentifier)
        
        newsTableView.register(UINib(nibName: NewsCellPhoto.reusedIdentifier, bundle: nil),
                               forCellReuseIdentifier: NewsCellPhoto.reusedIdentifier)
        
        newsTableView.register(NewsFooter.self,
                               forHeaderFooterViewReuseIdentifier: NewsFooter.reusedIdentifier)
        newsTableView.sectionFooterHeight = 60
        
        let storage = NewsStorage()
        news = storage.news
    }
    
}

//MARK: - Extension UITableView

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        news.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
// первая ячейка
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: NewsCellHeader2.reusedIdentifier,
                                                         for: indexPath) as? NewsCellHeader2
            else {
                return UITableViewCell()
            }
            let newsData = news[indexPath.section]
            let friend = newsData.user[0]
            cell.configure(friend: friend, newsData: newsData)
            return cell
        case 1:
// вторая ячейка
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: NewsCellText.reusedIdentifier,
                                                         for: indexPath) as? NewsCellText
            else {
                return UITableViewCell()
            }
            let news = news[indexPath.section]
            cell.configure(news: news)
            return cell
        default:
// третья ячейка
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: NewsCellPhoto.reusedIdentifier,
                                                         for: indexPath) as? NewsCellPhoto
            else {
                return UITableViewCell()
            }
            let news = news[indexPath.section]
            cell.configure(news: news)
            return cell
        }
    }
    
    // добвляем футер с контролами
    func  tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard
            let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: NewsFooter.reusedIdentifier) as? NewsFooter
        else {
            return nil
        }
        footer.configure(newsData: news[section].newsDataModel[0])
        footer.likeTapped = { [weak self] in
            self?.news[section].newsDataModel[0].newsIsLike.toggle()
            self?.newsTableView.reloadSections(IndexSet(integer: section), with: .none)
        }
        footer.repostTapped = { [weak self] in
            self?.news[section].newsDataModel[0].newsIsRepost.toggle()
            self?.newsTableView.reloadSections(IndexSet(integer: section), with: .none)
        }
        footer.commentTapped = { [weak self] in
            self?.news[section].newsDataModel[0].newsIsComment.toggle()
            self?.newsTableView.reloadSections(IndexSet(integer: section), with: .none)
        }
        
        // добавил белую рамку, чтобы был больше отступ (визуально, конечно) между футером и контентом
        footer.layer.borderWidth = 10
        footer.layer.borderColor = UIColor.white.cgColor
        footer.layer.backgroundColor = UIColor.white.cgColor
        return footer
    }
    
}

// на две версии NewsFeed потрачено 8-9 часов
