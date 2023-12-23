//
//  ViewController.swift
//  AppForCafeWithcode
//
//  Created by Begai Bakytovna on 21/12/23.
//

import UIKit

class ViewController: UIViewController {
    let signInLabel = UILabel()
    let emailLabel = UILabel()
    let email = UITextField()
    let passwordLabel = UILabel()
    let password = UITextField()
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        self.signInLabel.frame = CGRect(x: 75, y: 150, width: 100, height: 100)
        self.view.addSubview(signInLabel)
        self.signInLabel.text = "Sign in"
        self.signInLabel.textColor = .red
        self.signInLabel.font = .boldSystemFont(ofSize: 23)
        
        self.emailLabel.frame = CGRect(x: 75, y: 200, width: 100, height: 100)
        self.view.addSubview(emailLabel)
        self.emailLabel.text = "Email"
        self.emailLabel.textColor = .red
        
        self.email.frame = CGRect(x: 75, y: 265, width: 250, height: 35)
        self.view.addSubview(email)
        self.email.borderStyle = .roundedRect
        
        self.passwordLabel.frame = CGRect(x: 75, y: 315, width: 100, height: 100)
        self.view.addSubview(passwordLabel)
        self.passwordLabel.text = "Password"
        self.passwordLabel.textColor = .red
        
        self.password.frame = CGRect(x: 75, y: 380, width: 250, height: 35)
        self.view.addSubview(password)
        self.password.borderStyle = .roundedRect
        
        self.loginButton.frame = CGRect(x: 75, y: 470, width: 250, height: 50)
        self.view.addSubview(loginButton)
        self.loginButton.backgroundColor = .red
        self.loginButton.setTitle("Access", for: .normal)
        self.loginButton.layer.cornerRadius = 5
        self.loginButton.setTitleColor(UIColor.white, for: .normal)
        self.loginButton.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        
    }
   @objc func buttonClick () {
        if email.text!.isEmpty || password.text!.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Enter your email and password", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true)
        }
       let secondController = ViewController2 ()
       navigationController?.pushViewController(secondController, animated: true)
    }
}
