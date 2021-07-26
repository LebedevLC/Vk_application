//
//  NewsViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 23.07.2021.
//

import UIKit

final class NewsViewController: UIViewController {
   
    @IBOutlet var newsTableView: UITableView!
    
    private var news: [NewsModel] = []
    private var newsText: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        newsTableView.register(UINib(nibName: NewsCell.reusedIdentifier, bundle: nil),
                           forCellReuseIdentifier: NewsCell.reusedIdentifier)
        newsTableView.register(NewsHeader.self,
                           forHeaderFooterViewReuseIdentifier: NewsHeader.reusedIdentifier)
        newsTableView.register(NewsFooter.self,
                               forHeaderFooterViewReuseIdentifier: NewsFooter.reusedIdentifier)
        newsTableView.sectionFooterHeight = 60
        
        let storage = NewsStorage()
        news = storage.news
        newsText = news.map { $0.text }
    }
    
}

//MARK: - Extension UITableView

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        news.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: NewsCell.reusedIdentifier, for: indexPath) as? NewsCell
        else {
            return UITableViewCell()
        }
        let news = news[indexPath.section]
        cell.configure(news: news)
//        cell.imageView?.image = UIImage(named: news.newsImageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let verticalPadding: CGFloat = 20
        let maskLayer = CALayer()
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: cell.bounds.origin.x,
                                 y: cell.bounds.origin.y,
                                 width: cell.bounds.width,
                                 height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        cell.layer.mask = maskLayer
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: NewsHeader.reusedIdentifier) as? NewsHeader
        else {
            return nil
        }
        header.configure(newsText: newsText[section])
        header.layer.borderWidth = 1
        header.layer.borderColor = UIColor.white.cgColor
        header.layer.backgroundColor = UIColor.white.cgColor
        return header
    }
        
    func  tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard
            let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: NewsFooter.reusedIdentifier) as? NewsFooter
        else {
            return nil
        }
        footer.configure(newsData: news[section].newsDataModel[0])
        footer.likeTapped = { [weak self] in
            self?.news[section].newsDataModel[0].newsIsLike.toggle()
            self?.newsTableView.reloadData()
        }
        footer.repostTapped = { [weak self] in
            self?.news[section].newsDataModel[0].newsIsRepost.toggle()
            self?.newsTableView.reloadData()
        }
        footer.commentTapped = { [weak self] in
            self?.news[section].newsDataModel[0].newsIsComment.toggle()
            self?.newsTableView.reloadData()
        }
        footer.layer.borderWidth = 10
        footer.layer.borderColor = UIColor.white.cgColor
        footer.layer.backgroundColor = UIColor.white.cgColor
        return footer
    }
    
}

