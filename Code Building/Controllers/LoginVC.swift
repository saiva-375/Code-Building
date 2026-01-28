//
//  ViewController.swift
//  Code Building
//
//  Created by seshi on 1/27/26.
//

import UIKit

class LoginVC: UIViewController {
    
    var titleLabel: UILabel?
    var usernameTB: UITextField?
    var passwordTB: UITextField?
    var loginBtn: UIButton?
    var signUpBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //Created title label
        titleLabel = UILabel()
        titleLabel?.text = "Login Page"
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = .red
        titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        //Adding the label to subview
        if let tLabel = titleLabel {
            view.addSubview(tLabel)
            
            //Setting the constraints
            NSLayoutConstraint.activate([
                tLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
                tLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        }
        
        //Username Text Box created
        usernameTB = UITextField()
        usernameTB?.placeholder = "Username"
        usernameTB?.placeholderRect(forBounds: .zero)
        usernameTB?.textAlignment = .center
        usernameTB?.borderStyle = .roundedRect
        usernameTB?.font = UIFont.systemFont(ofSize: 18)
        usernameTB?.backgroundColor = .white
        usernameTB?.translatesAutoresizingMaskIntoConstraints = false
        
        if let username = usernameTB {
            view.addSubview(username)
            
            //Setting the constraints
            NSLayoutConstraint.activate([
                username.topAnchor.constraint(equalTo: titleLabel!.topAnchor, constant: 80),
                username.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                username.widthAnchor.constraint(equalToConstant: 280),
                username.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
        
        passwordTB = UITextField()
        passwordTB?.placeholder = "Password"
        passwordTB?.placeholderRect(forBounds: .zero)
        passwordTB?.textAlignment = .center
        passwordTB?.borderStyle = .roundedRect
        passwordTB?.font = UIFont.systemFont(ofSize: 18)
        passwordTB?.backgroundColor = .white
        passwordTB?.translatesAutoresizingMaskIntoConstraints = false
        
        if let password = passwordTB {
            view.addSubview(password)
            
            NSLayoutConstraint.activate([
                password.topAnchor.constraint(equalTo: usernameTB!.topAnchor, constant: 60),
                password.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                password.widthAnchor.constraint(equalToConstant: 280),
                password.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
        
        
        loginBtn = UIButton()
        loginBtn?.setTitle("Login", for: .normal)
        loginBtn?.setTitleColor(.white, for: .normal)
        loginBtn?.backgroundColor = .red
        loginBtn?.layer.cornerRadius = 8
        loginBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        loginBtn?.translatesAutoresizingMaskIntoConstraints = false
        
        if let login = loginBtn {
            view.addSubview(login)
            
            NSLayoutConstraint.activate([
                login.topAnchor.constraint(equalTo: passwordTB!.topAnchor, constant: 100),
                login.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                login.widthAnchor.constraint(equalToConstant: 280),
                login.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
        
        signUpBtn = UIButton()
        signUpBtn?.setTitle("Sign Up", for: .normal)
        signUpBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        signUpBtn?.setTitleColor(.red, for: .normal)
        signUpBtn?.tintColor = .red
        signUpBtn?.translatesAutoresizingMaskIntoConstraints = false
        
        if let signUp = signUpBtn {
            view.addSubview(signUp)
            
            NSLayoutConstraint.activate([
                signUp.topAnchor.constraint(equalTo: loginBtn!.topAnchor, constant: 60),
                signUp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                signUp.widthAnchor.constraint(equalToConstant: 280),
                signUp.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
    }
}
