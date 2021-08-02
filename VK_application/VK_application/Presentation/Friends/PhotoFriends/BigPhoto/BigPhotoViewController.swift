//
//  BigPhotoViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 31.07.2021.
//


import UIKit

class BigPhotoViewController: UIViewController {

    @IBOutlet var bigView: BigPhotoView!
    var bigPhotoes: [PhotoModel] = []
    var sourceIndexPath: IndexPath = IndexPath()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigView.colors = bigPhotoes.map({$0.fileName})
        bigView.visibleIndex = sourceIndexPath.item
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.subviews.forEach({ $0.removeFromSuperview() })
    }
    
}

// 2 часа на первую версию, чтобы передавать сюда изображения
// 3 часа ночью и полчаса утром на вторую версию чтобы передать сюда изображения (утром думается лучше)


