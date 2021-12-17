//
//  ViewController.swift
//  homeWork11
//
//  Created by Dmitriy Lee on 13.12.2021.
//

//3.  Люди и взаимодействие важнее задач и инструментов
//    Взаимоотношения с клиентом важнее контрактов
//    Гибкость важнее изначальных планов
//    Работающий продукт важнее документации
//4.  Scrum - фиксированные временные лимиты (спринты), Kanban - нет
//    Kanban - закрепление ответственного лица/команды за задачей
//    Scrum - ежедневные собрания
//    Kanban имеет кастомные столбцы, есть ограничения по количеству работ в каждом столбце
//5.  Scrum - разделение процесса разработки на спринты (1-4 недель), определение задач, которые планируется выполнить в 1 спринт, ежедневные собрания, на которых предоставляется отчет о проделанной вчера работе, что планируется выполнить сегодня и что мешает их выполнить.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        if ViewController.isValidEmail(email: loginTextField.text) == false {
            statusLabel.text = "Enter correct e-mail"
        }
        
        if ViewController.isValidPassword(testStr: passwordTextField.text) == false {
            statusLabel.text = "Password must contain at least 6 symbols, one uppercase, one digit and one lowercase"
        }
        
        if ViewController.isValidEmail(email: loginTextField.text) == true && ViewController.isValidPassword(testStr: passwordTextField.text) == true {
            statusLabel.text = "Great!"
            statusLabel.textColor = .green
        }
    }
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.isEnabled = false
        
        [loginTextField, passwordTextField].forEach { $0?.addTarget(self, action: #selector(editingChanged), for: .editingChanged)}
    }
    
    @objc func editingChanged(_ textField: UITextField) {
        guard
            let login = loginTextField.text, !login.isEmpty,
            let password = passwordTextField.text, !password.isEmpty
        else {
            self.loginButton.isEnabled = false
            return
        }
        loginButton.isEnabled = true
    }
    
    public static func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        
        return pred.evaluate(with: email)
    }
    
    public static func isValidPassword(testStr:String?) -> Bool {
        guard testStr != nil else { return false }
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{6,}")
        
        return passwordTest.evaluate(with: testStr)
    }
}

