//
//  TableVC.swift
//  Code Building
//
//  Created by sai on 1/28/26.
//

import UIKit

class SelectionItem {
    var index :Int
    var isSelected:Bool
    var Value:String
    
    init(index: Int, isSelected: Bool, Value: String) {
        self.index = index
        self.isSelected = isSelected
        self.Value = Value
    }
}

class TableVC: UIViewController {

    var sampleTableView :UITableView!
    
    let numberOfRows = 20
    
    var selectionArray = [SelectionItem]()
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Select a row \(name ?? "")"
        // Do any additional setup after loading the view.
        setupTV()
    }

    func setupTV() {
        
        for i in 1...numberOfRows {
            let item = SelectionItem(index: i, isSelected: false, Value: "Car - \(i)")
            selectionArray.append(item)
        }
        
        sampleTableView = UITableView()
        sampleTableView.translatesAutoresizingMaskIntoConstraints = false
        sampleTableView.register(UITableViewCell.self, forCellReuseIdentifier: "sampleCell")
        sampleTableView.delegate = self
        sampleTableView.dataSource = self
        view.addSubview(sampleTableView)
         addConstraints()
      
        
    }

    func addConstraints() {
        
        var constrains = [NSLayoutConstraint]()
        
        constrains.append(sampleTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor ,constant: 20))
        constrains.append(sampleTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor ,constant: 20))
        constrains.append(sampleTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor ,constant: 20))
        constrains.append(sampleTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor ,constant: 20))
       
        NSLayoutConstraint.activate(constrains)
    }
   
}

extension TableVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "sampleCell") else {
            fatalError("unable to dque")
        }
        var content = cell.defaultContentConfiguration()
        content.text = selectionArray[indexPath.row].Value
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  
        //referencing the value
        let selectedItem = selectionArray[indexPath.row]
        selectedItem.isSelected.toggle()
        selectedItem.Value = selectedItem.isSelected ? "Hello you selected car - \(selectedItem.index)" : "Car - \(selectedItem.index)"
        self.sampleTableView.reloadRows(at: [indexPath], with: .none)

    }
    
}
