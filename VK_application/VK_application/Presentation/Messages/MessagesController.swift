//
//  MessagesController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 28.07.2021.
//

import UIKit

class MessagesController: UIViewController {
    
    private var displayLink: CADisplayLink?
    private var loadingLabeltext: String = ""
    private var loadingLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    private var firstPoint: UILabel = {
        let firstPoint = UILabel()
        firstPoint.translatesAutoresizingMaskIntoConstraints = false
        firstPoint.text = "."
        firstPoint.textColor = UIColor.gray
        firstPoint.font = UIFont.boldSystemFont(ofSize: 100)
        return firstPoint
    }()
    private var secondPoint: UILabel = {
        let secondPoint = UILabel()
        secondPoint.translatesAutoresizingMaskIntoConstraints = false
        secondPoint.text = "."
        secondPoint.textColor = UIColor.gray
        secondPoint.font = UIFont.boldSystemFont(ofSize: 100)
        return secondPoint
    }()
    private var thirdPoint: UILabel = {
        let thirdPoint = UILabel()
        thirdPoint.translatesAutoresizingMaskIntoConstraints = false
        thirdPoint.text = "."
        thirdPoint.textColor = UIColor.gray
        thirdPoint.font = UIFont.boldSystemFont(ofSize: 100)
        return thirdPoint
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animationSecond()
    }
    
    private func setView() {
        self.title = "Сообщения"
        view.addSubview(loadingLabel)
        loadingLabel.text = "Loading ..."
        loadingLabel.frame = view.frame
        animateLabelDots(label: loadingLabel)
        setConstr()
    }
    
    private func setConstr() {
        view.addSubview(firstPoint)
        NSLayoutConstraint.activate([
            firstPoint.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 15),
            firstPoint.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30)
        ])
        view.addSubview(secondPoint)
        NSLayoutConstraint.activate([
            secondPoint.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 15),
            secondPoint.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        view.addSubview(thirdPoint)
        NSLayoutConstraint.activate([
            thirdPoint.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 15),
            thirdPoint.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30)
        ])
    }
    
    private func animateLabelDots(label: UILabel) {
        guard var text = label.text else { return }
        text = String(text.dropLast(3))
        loadingLabeltext = text
        displayLink = CADisplayLink(target: self, selector: #selector(showHideDots))
        displayLink?.add(to: .main, forMode: .common)
        displayLink?.preferredFramesPerSecond = 2
    }
    
    @objc private func showHideDots() {
        if !loadingLabeltext.contains("...") {
            loadingLabeltext = loadingLabeltext.appending(".")
        } else {
            loadingLabeltext = "Loading "
        }
        loadingLabel.text = loadingLabeltext
    }
    
//MARK: - 3dots
    
    func animationSecond() {
        UIView.animateKeyframes(withDuration: 1.5,
                                delay: 0,
                                options: [.repeat],
                                animations: {
                                    UIView.addKeyframe(withRelativeStartTime: 0.15,
                                                       relativeDuration: 0.16,
                                                       animations: {
                                                        self.firstPoint.alpha = 0
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.30,
                                                       relativeDuration: 0.16,
                                                       animations: {
                                                        self.secondPoint.alpha = 0
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.45,
                                                       relativeDuration: 0.16,
                                                       animations: {
                                                        self.thirdPoint.alpha = 0
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.60,
                                                       relativeDuration: 0.16,
                                                       animations: {
                                                        self.firstPoint.alpha = 1
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.75,
                                                       relativeDuration: 0.16,
                                                       animations: {
                                                        self.secondPoint.alpha = 1
                                                       })
                                    UIView.addKeyframe(withRelativeStartTime: 0.9,
                                                       relativeDuration: 0.16,
                                                       animations: {
                                                        self.thirdPoint.alpha = 1
                                                       })
                                },
                                completion: nil)
    }
    
}

// Потрачено 4-5 часов на работу с анимациями (кроме фотографий)

