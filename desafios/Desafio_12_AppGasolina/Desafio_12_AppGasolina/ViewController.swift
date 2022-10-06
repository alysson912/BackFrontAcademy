//
//  ViewController.swift
//  Desafio_12_AppGasolina
//
//  Created by ALYSSON MENEZES on 04/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var ethanolPriceLabel: UILabel!
    @IBOutlet weak var gasPriceLabel: UILabel!
    
    @IBOutlet weak var ethanolPriceTextField: UITextField!
    @IBOutlet weak var gasPriceTextField: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configFontsEndColors()
    }
    
    func configFontsEndColors() {
        view.backgroundColor = .white
//        logoImageView.image = UIImage(named: "")
        ethanolPriceLabel.text = "Preço Álcool"
        gasPriceLabel.text = "Preço Gasolina"
        ethanolPriceLabel.font = UIFont.boldSystemFont(ofSize: 18)
        gasPriceLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        gasPriceTextField.placeholder = "Ex: 2.99"
        ethanolPriceTextField.placeholder = "Ex: 1.99"
        gasPriceTextField.textAlignment = .center
        ethanolPriceTextField.textAlignment = .center
        
        gasPriceTextField.delegate = self
        ethanolPriceTextField.delegate = self
        
        gasPriceTextField.keyboardType = .decimalPad
        ethanolPriceTextField.keyboardType = .decimalPad
        
        calculateButton.setTitle("Calcular", for: .normal)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.backgroundColor = .blue
        resultLabel.text = "Digite os preços!"
        resultLabel.textColor = .systemBlue
        resultLabel.backgroundColor = .clear
        
        calculateButton.isEnabled = false
        calculateButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
  
    }

// as? usado para especificar um tipo, ex: amigao agora vc é uma string

    @IBAction func tappedCalculateButton(_ sender: UIButton) {
        // metodo para substituir a string para .
let ethanolPrice = Double((ethanolPriceTextField.text?.replacingOccurrences(of: ",", with: ".")) ??  "0.00") ?? 0.00
let gasPrice = Double((gasPriceTextField.text?.replacingOccurrences(of: ",", with: ".")) ??  "0.00") ?? 0.00
    
        if ethanolPrice / gasPrice > 0.7 {
            resultLabel.text = "Melhor utilizar Gasolina!"
            
        } else {
            resultLabel.text = "Melhor utilizar Álcool!"
        }
    }
}

extension ViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        if ethanolPriceTextField.text == "" || gasPriceTextField.text == "" {
            calculateButton.isEnabled = false
        } else {
            calculateButton.isEnabled = true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
