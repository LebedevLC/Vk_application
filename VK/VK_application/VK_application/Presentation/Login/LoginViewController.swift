//
//  LoginViewController.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 03.07.2021.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var titleImageView: UIImageView!
    @IBOutlet private weak var titleLabelView: UILabel!
    @IBOutlet private weak var passwordLabel: UILabel!
    @IBOutlet private weak var loginLabel: UILabel!
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var unhidePasswordButton: UIButton!
    @IBOutlet private weak var loadingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Отписываемся от уведомлений клавиатуры
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    //    @IBAction func passwordTextButtonPresed(_ sender: UIButton) {             // где-то ошибка
    //        passwordTextField.isSecureTextEntry = false
    //    }
    
    @IBAction private func loginButtonPressed(_ sender: UIButton) {
        guard
            let login = loginTextField.text,
            let password = passwordTextField.text
        else {
            print("Login or password is empty")
            return
        }
        
        if login == "1" && password == "1" {
            sucsessLogin()
        } else {
            unsucsessLogin()
        }
        
    }
    
    
    @objc private func keyboardWasShown(notification: Notification) {           // Когда клавиатура появляется
        
        // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    
    @objc private func keyboardWillBeHidden(notification: Notification) {        //Когда клавиатура исчезает
        
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    
    @objc private func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
    
    private func setView() {
        loginButton.layer.cornerRadius = 8
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(tapGesture)
    }
    
    
    private func sucsessLogin(){
        titleLabelView.text = "Подключаемся"
        loadingIndicator.isHidden = false
        loginTextField.isEnabled = false
        passwordTextField.isEnabled = false
        loginButton.isEnabled = false
        print("Sucsessful login!")
    }
    
    
    private func unsucsessLogin() {
        titleLabelView.text = "Ошибка"
        loadingIndicator.isHidden = true
        print("Unsucsessful login!")
    }
}
