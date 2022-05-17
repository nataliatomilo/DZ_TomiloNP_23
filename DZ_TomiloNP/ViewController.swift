//
//  ViewController.swift
//  DZ_TomiloNP
//
//  Created by Наталья Томило on 17.05.22.
//

import UIKit

class ViewController: UIViewController {
    let firstTextField: UITextField! = UITextField()
    let secondTextField: UITextField! = UITextField()
    let button: UIButton! = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(firstTextField)
        view.addSubview(secondTextField)
        view.addSubview(button)
        
        firstTextField.backgroundColor = .red
        firstTextField.placeholder = "First"
        
        secondTextField.backgroundColor = .red
        secondTextField.placeholder = "Second"
        
        button.backgroundColor = .gray
        
        NSLayoutConstraint.activate([
            firstTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            firstTextField.heightAnchor.constraint(equalToConstant: 50),
        
            secondTextField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 20),
            secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondTextField.heightAnchor.constraint(equalToConstant: 50),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)])
    }
}
