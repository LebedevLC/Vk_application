//
//  UserGroupKeyboardExtension.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 21.07.2021.
//

import UIKit

extension UserGroupsViewController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
//        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown),
//                                               name: UIResponder.keyboardWillShowNotification, object: nil)
//        // Второе — когда она пропадает
//        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)),
//                                               name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        // Отписываемся от уведомлений клавиатуры
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
//
//    }
//
//    @objc private func keyboardWasShown(notification: Notification) {         // Когда клавиатура появляется
//        // Получаем размер клавиатуры
//        let info = notification.userInfo! as NSDictionary
//        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
//        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
//        // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
//        self.groupTableView?.contentInset = contentInsets
//        groupTableView?.scrollIndicatorInsets = contentInsets
//    }
//
//    @objc private func keyboardWillBeHidden(notification: Notification) {      //Когда клавиатура исчезает
//        // Устанавливаем отступ внизу UIScrollView, равный 0
//        let contentInsets = UIEdgeInsets.zero
//        groupTableView?.contentInset = contentInsets
//        groupTableView?.scrollIndicatorInsets = contentInsets
//    }
    

}
