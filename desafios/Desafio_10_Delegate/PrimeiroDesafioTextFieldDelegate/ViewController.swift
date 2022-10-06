//
//  ViewController.swift
//  PrimeiroDesafioTextFieldDelegate
//
//  Created by Caio Fabrini on 27/09/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        configFontEndColors()
    }
    
    func configFontEndColors() {
        registerButton.isEnabled = false
        view.backgroundColor = UIColor.systemBlue
        
        nameTextField.placeholder = "Digite seu nome:"
        addressTextField.placeholder = "Digite seu endereço:"
        passwordTextField.placeholder = "Digite sua senha:"
        confirmPasswordTextField.placeholder = "Confirme sua senha:"
        
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        
        
   
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.cornerRadius = 7
        
        
        addressTextField.layer.cornerRadius = 7
        addressTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        passwordTextField.layer.cornerRadius = 7
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        confirmPasswordTextField.layer.cornerRadius = 7
        confirmPasswordTextField.layer.borderWidth = 2
        confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.backgroundColor = .white
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        registerButton.layer.cornerRadius = 7
    }

    @IBAction func tappedRegisterButton(_ sender: UIButton) {
       print("Cadastro realizado com sucesso")
    }
    
    
    
}
//
extension ViewController: UITextFieldDelegate {
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        if nameTextField.text == "" || addressTextField.text == "" || passwordTextField.text == "" || confirmPasswordTextField.text == "" {
            registerButton.isEnabled = false
        } else {
    
            if passwordTextField.text == confirmPasswordTextField.text {
                registerButton.isEnabled = true
                passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
            } else {
                passwordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                registerButton.isEnabled = false
            }
            
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
