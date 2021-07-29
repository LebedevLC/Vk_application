//
//  PhotoFriendViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 11.07.2021.
//

import UIKit

final class PhotoFriendViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var photoes: [PhotoModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}

extension PhotoFriendViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photoes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier,
                                                      for: indexPath) as! PhotoCollectionViewCell
        let photo = photoes[indexPath.item]
        cell.configure(photoModel: photo)
        cell.likeTapped = { [weak self] in
            self?.photoes[indexPath.item].isLike.toggle()
                collectionView.reloadSections(IndexSet(integer: 0)) //UIView.performWithoutAnimation
        }
        return cell
    }
    
}




