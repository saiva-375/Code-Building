//
//  SignUpVC.swift
//  Code Building
//
//  Created by sai on 1/27/26.
//

import UIKit

class SignUpVC: UIViewController {

    var titleLabel: UILabel?
    var nameTB: UITextField?
    var emailTB: UITextField?
    var passwordTB: UITextField?
    var confirmPasswordTB: UITextField?
    var signUpBtn: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //Created title label
        titleLabel = UILabel()
        titleLabel?.text = "Sign Up Page"
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
        
        //Creating the name text box
        nameTB = UITextField()
        nameTB?.placeholder = "Enter your name"
        nameTB?.borderStyle = .roundedRect
        nameTB?.backgroundColor = .white
        nameTB?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        nameTB?.translatesAutoresizingMaskIntoConstraints = false
        nameTB?.textAlignment = .center
        
        if let name = nameTB {
            view.addSubview(name)
            
            //Setting the constraints
            NSLayoutConstraint.activate([
                name.topAnchor.constraint(equalTo: titleLabel!.topAnchor, constant: 100),
                name.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                name.widthAnchor.constraint(equalToConstant: 280),
                name.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
        
        emailTB = UITextField()
        emailTB?.placeholder = "Enter your email"
        emailTB?.borderStyle = .roundedRect
        emailTB?.backgroundColor = .white
        emailTB?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        emailTB?.translatesAutoresizingMaskIntoConstraints = false
        emailTB?.textAlignment = .center
        
        if let email = emailTB {
            view.addSubview(email)
            
            NSLayoutConstraint.activate([
                email.topAnchor.constraint(equalTo: nameTB!.topAnchor, constant: 60),
                email.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                email.widthAnchor.constraint(equalToConstant: 280), email.heightAnchor.constraint(equalToConstant: 44)
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
                password.topAnchor.constraint(equalTo: emailTB!.topAnchor, constant: 60),
                password.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                password.widthAnchor.constraint(equalToConstant: 280),
                password.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
        confirmPasswordTB = UITextField()
        confirmPasswordTB?.placeholder = "Confirm Password"
        confirmPasswordTB?.placeholderRect(forBounds: .zero)
        confirmPasswordTB?.textAlignment = .center
        confirmPasswordTB?.borderStyle = .roundedRect
        confirmPasswordTB?.font = UIFont.systemFont(ofSize: 18)
        confirmPasswordTB?.backgroundColor = .white
        confirmPasswordTB?.translatesAutoresizingMaskIntoConstraints = false
        
        if let confirmPassword = confirmPasswordTB {
            view.addSubview(confirmPassword)
            
            NSLayoutConstraint.activate([
                confirmPassword.topAnchor.constraint(equalTo: passwordTB!.topAnchor, constant: 60),
                confirmPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                confirmPassword.widthAnchor.constraint(equalToConstant: 280),
                confirmPassword.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
        signUpBtn = UIButton()
        signUpBtn?.setTitle("Sign Up", for: .normal)
        signUpBtn?.setTitleColor(.white, for: .normal)
        signUpBtn?.backgroundColor = .red
        signUpBtn?.layer.cornerRadius = 8
        signUpBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        signUpBtn?.translatesAutoresizingMaskIntoConstraints = false
        
        if let signUp = signUpBtn {
            view.addSubview(signUp)
            
            NSLayoutConstraint.activate([
                signUp.topAnchor.constraint(equalTo: confirmPasswordTB!.topAnchor, constant: 100),
                signUp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                signUp.widthAnchor.constraint(equalToConstant: 280),
                signUp.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
    }
}

