//
//  ViewController.swift
//  HW1_CalculatorApp
//
//  Created by Shakir Kadirov on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var firstTextField: UITextField = {
        $0.placeholder = "Input first integer number"
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 25
        return $0
    }(UITextField())
    
    
    lazy var secondTextField: UITextField = {
        $0.placeholder = "Input second integer number"
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 25
        return $0
    }(UITextField())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(firstTextField)
        view.addSubview(secondTextField)
        
        setConstraints()
    }
    
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            firstTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            firstTextField.heightAnchor.constraint(equalToConstant: 50),
            
            secondTextField.topAnchor.constraint(equalTo: firstTextField.topAnchor, constant: 60),
            secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            secondTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            secondTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

