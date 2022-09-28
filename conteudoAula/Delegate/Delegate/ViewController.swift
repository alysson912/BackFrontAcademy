//
//  ViewController.swift
//  Delegate
//
//  Created by ALYSSON MENEZES on 21/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: 2* UITextFieldDelegate = a classe verifica se o contrato esta em conformidade
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addElements()
    }
    
    
    func addElements(){
        configEmailTextField()
        tappedLoginButton()
    }
    
    func configEmailTextField(){
        emailTextField.placeholder = "Digite seu e-mail"
        emailTextField.keyboardType = .emailAddress
        
        passwordTextfield.placeholder = "Digite sua senha"
        passwordTextfield.keyboardType = .emailAddress
        
        //MARK: 1*  assina o contrato
        emailTextField.delegate = self
        passwordTextfield.delegate = self
        // textfield sem delegade nao faz nada
    }
    
    func tappedLoginButton(){
        
        loginButton.tintColor = .white
        loginButton.backgroundColor = .black
        loginButton.setTitle("login", for: .normal)
        loginButton.titleLabel?.textAlignment = .center
        
    }
    
    
    //MARK:  3* Atalho =  didBegin
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        // o metododo didBegin é chamado quando o usuario clica na textfield para digitar, ( teclado sobe)
        //        textField.layer.borderWidth = 2
        // textField = arbodagem geral atribui todos os textField ao subir o teclado
        //        textField.layer.borderColor = UIColor.blue.cgColor
        
        // begin nao faz verificacao alguma, usuario apesa clicou para aparecer o teclado
        //MARK: SÓ SOBE O TECLADO !
        
        //MARK: Abordagem para casos especificos
 
        
    }

    
    //MARK: 5* Atalho =  didEnd
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        //MARK: (disparado quando quando o usuario digitar e clicar em qualquer area em "branco" ) em seguida sera feita a verificacao de  campo.
        // todas as verificacoes sao feitas no didEnd
    
//        if emailTextField.text == "" {
//            emailTextField.layer.borderWidth = 2
//            emailTextField.layer.borderColor = UIColor.red.cgColor
//        }else if  passwordTextfield.text == ""{
//            passwordTextfield.layer.borderWidth = 2
//            passwordTextfield.layer.borderColor = UIColor.red.cgColor
//
//            // remover borda
//        }else{
//            emailTextField.layer.borderWidth = 0
//
//        }
        
        switch textField {
        case emailTextField:
            emailTextField.layer.borderWidth = 2
            emailTextField.layer.borderColor = UIColor.yellow.cgColor
        case passwordTextfield:
            passwordTextfield.layer.borderWidth = 2
            passwordTextfield.layer.borderColor = UIColor.red.cgColor
        default:
            break
            
        }
    }
    
    
    //MARK: 4* Atalho = return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        //MARK: metodo será disparado ao pressionar o botao return (no teclado)
        emailTextField.resignFirstResponder()
        return true
    }
    
    
}

