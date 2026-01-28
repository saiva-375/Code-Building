//
//  HomeVC.swift
//  Code Building
//
//  Created by seshi on 1/27/26.
//

import UIKit

class HomeVC: UIViewController {
    
    var titleLabel: UILabel?
    var descriptionLabel: UILabel?
    var addBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //Creating title label
        titleLabel = UILabel()
        titleLabel?.text = "Add Vehicle?"
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
        //Creating description label
        descriptionLabel = UILabel()
        descriptionLabel?.text = "Add your Vehicle to the insurance plan to save it across all kind of accidents and claims."
        descriptionLabel?.textAlignment = .center
        descriptionLabel?.textColor = .black
        descriptionLabel?.numberOfLines = 0
        descriptionLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        descriptionLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        //Adding the label to subview
        if let dLabel = descriptionLabel {
            view.addSubview(dLabel)
            
            //Setting the constraints
            NSLayoutConstraint.activate([
                dLabel.topAnchor.constraint(equalTo: titleLabel!.topAnchor, constant: 80),
                dLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        }
        
        addBtn = UIButton()
        addBtn?.setTitle("Add Vehicle", for: .normal)
        addBtn?.setTitleColor(.white, for: .normal)
        addBtn?.backgroundColor = .red
        addBtn?.layer.cornerRadius = 10
        addBtn?.translatesAutoresizingMaskIntoConstraints = false
        
        if let addButton = addBtn {
            view.addSubview(addButton)
            
            NSLayoutConstraint.activate([
                addButton.topAnchor.constraint(equalTo: descriptionLabel!.bottomAnchor, constant: 40),
                addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                addButton.widthAnchor.constraint(equalToConstant: 200)
            ])
        }
    }
}
