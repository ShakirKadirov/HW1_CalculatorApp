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
        $0.leftView = ofsetView()
        $0.leftViewMode = .always
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 25
        return $0
    }(UITextField())
    
    
    lazy var secondTextField: UITextField = {
        $0.placeholder = "Input second integer number"
        $0.leftView = ofsetView()
        $0.leftViewMode = .always
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 25
        return $0
    }(UITextField())
    
    func ofsetView() -> UIView{
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 10, height: 50)
        return view
    }
    
    lazy var resultLabel: UILabel = {
        $0.text = "Number"
        $0.textColor = .white
        $0.font = UIFont.boldSystemFont(ofSize: 30)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    
    lazy var stackViewButtons: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 10
        $0.addArrangedSubview(addButton)
        $0.addArrangedSubview(subtractButton)
        $0.addArrangedSubview(multiplyButton)
        $0.addArrangedSubview(divideButton)
        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.backgroundColor = .white
        return $0
    }(UIStackView())
    
    lazy var addButton: UIButton = {
        $0.setTitle("+", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .systemPink
        $0.layer.cornerRadius = 5
        $0.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        return $0
    }(UIButton())
    lazy var subtractButton: UIButton = {
        $0.setTitle("-", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .systemPink
        $0.layer.cornerRadius = 5
        $0.addTarget(self, action: #selector(subtractButtonTapped), for: .touchUpInside)
        return $0
    }(UIButton())
    lazy var multiplyButton: UIButton = {
        $0.setTitle("*", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .systemPink
        $0.layer.cornerRadius = 5
        $0.addTarget(self, action: #selector(multiplyButtonTapped), for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var divideButton: UIButton = {
        $0.setTitle("/", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .systemPink
        $0.layer.cornerRadius = 5
        $0.addTarget(self, action: #selector(divideButtonTapped), for: .touchUpInside)
        return $0
    }(UIButton())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(firstTextField)
        view.addSubview(secondTextField)
        view.addSubview(resultLabel)
        view.addSubview(stackViewButtons)
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
            secondTextField.heightAnchor.constraint(equalToConstant: 50),
            
            
            resultLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackViewButtons.heightAnchor.constraint(equalToConstant: 60),
            stackViewButtons.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackViewButtons.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackViewButtons.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60)
        ])
    }
    
    @objc func addButtonTapped(_ sender: Any) {
        print("add Button")
        
        let firstNumber = firstTextField.text!
        let secondNumber = secondTextField.text!
        
        let sum = Int(firstNumber)! + Int(secondNumber)!
        
        resultLabel.text = "\(sum)"
        
    }
    
    @objc func subtractButtonTapped(_ sender: Any) {
        print("add Button")
        
        let firstNumber = firstTextField.text!
        let secondNumber = secondTextField.text!
        
        let sum = Int(firstNumber)! - Int(secondNumber)!
        
        resultLabel.text = "\(sum)"
        
    }
    
    
    @objc func multiplyButtonTapped(_ sender: Any) {
        print("add Button")
        
        let firstNumber = firstTextField.text!
        let secondNumber = secondTextField.text!
        
        let sum = Int(firstNumber)! * Int(secondNumber)!
        
        resultLabel.text = "\(sum)"
        
    }
    
    @objc func divideButtonTapped(_ sender: Any) {
        print("add Button")
        
        let firstNumber = firstTextField.text!
        let secondNumber = secondTextField.text!
        
        let sum = Int(firstNumber)! / Int(secondNumber)!
        
        resultLabel.text = "\(sum)"
        
    }
}

