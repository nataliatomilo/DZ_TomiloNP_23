//
//  SecondViewController.swift
//  DZ_TomiloNP
//
//  Created by Артем Томило on 17.05.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    let firstLabel: UILabel = UILabel()
    let secondLabel: UILabel = UILabel()
    let button: UIButton = UIButton()
    
    weak var delegate: textForSecondVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(button)
        
        firstLabel.backgroundColor = .lightGray
        secondLabel.backgroundColor = .lightGray
        button.backgroundColor = .magenta
        
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            firstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            firstLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            firstLabel.heightAnchor.constraint(equalToConstant: 50),
        
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 20),
            secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondLabel.heightAnchor.constraint(equalToConstant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)])
        
        button.addTarget(self, action: #selector(goFirstVC(_ :)), for: .primaryActionTriggered)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        firstLabel.text = delegate?.enterTextFirst(vc: self)
        secondLabel.text = delegate?.enterTextSecond(vc: self)
    }
    
    @objc func goFirstVC(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
protocol textForSecondVC: AnyObject {
    func enterTextFirst(vc: SecondViewController) -> String
    func enterTextSecond(vc: SecondViewController) -> String
}
