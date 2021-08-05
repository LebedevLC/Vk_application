//
//  CustomNavConInteractiv.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 05.08.2021.
//

import UIKit

final class CustomNavConInteractiv: UINavigationController {
    
    let interactivTransition = InteractiveTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
}

extension CustomNavConInteractiv: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return interactivTransition.isStarted ? interactivTransition : nil
    }
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        switch operation {
        case .pop:
            if navigationController.viewControllers.first != toVC {
                interactivTransition.viewController = toVC
            }
            return PopAnimator()
        case .push:
        interactivTransition.viewController = toVC
            return PushAnimator()
        default:
            return nil
        }
    }
}
