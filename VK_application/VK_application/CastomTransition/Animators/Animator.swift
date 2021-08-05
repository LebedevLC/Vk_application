//
//  Animator.swift
//  WeatherAppGB
//
//  Created by Stanislav Belykh on 29.07.2021.
//

import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {

	private let duration: TimeInterval = 0.5

	func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
		duration
	}

	func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
		let sourceController = transitionContext.viewController(forKey: .from)!
		let destinationController = transitionContext.viewController(forKey: .to)!

		let containerViewFrame = transitionContext.containerView.frame
		let sourceControllerTargetFrame = CGRect(x: containerViewFrame.width,
												 y: containerViewFrame.height,
												 width: sourceController.view.frame.width,
												 height: sourceController.view.frame.height)
		let destinationControllerTargetFrame = sourceController.view.frame

		destinationController.view.frame = CGRect(x: -containerViewFrame.width,
												  y: -containerViewFrame.height,
												  width: sourceController.view.frame.width,
												  height: sourceController.view.frame.height)

		transitionContext.containerView.addSubview(destinationController.view)
		transitionContext.containerView.backgroundColor = .systemPink

		UIView.animate(withDuration: duration,
					   animations: {
						sourceController.view.frame = sourceControllerTargetFrame
						destinationController.view.frame = destinationControllerTargetFrame
					   }) { isCompleted in
			transitionContext.completeTransition(isCompleted)
		}
	}
}
