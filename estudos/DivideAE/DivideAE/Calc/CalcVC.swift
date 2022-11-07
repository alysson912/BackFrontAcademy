//
//  CalcVC.swift
//  DivideAE
//
//  Created by ALYSSON MENEZES on 13/10/22.
// atualizado


import UIKit

class CalcVC: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var valorASerDivididoLabel: UILabel!
    
    @IBOutlet weak var gorjetaSwitch: UISegmentedControl!
    
    @IBOutlet weak var qtdDivisaoLabel: UILabel!
    @IBOutlet weak var qtdDivisao: UIStepper!
    
    
    @IBOutlet weak var valorContaTotalTextField: UITextField!
    
    @IBOutlet weak var calcContaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addElement()
        configTapGesture()
    }
    
    func addElement(){
        
        qtdDivisaoLabel.text = String(Int(1))
        mainView.backgroundColor = .white
        mainView.layer.shadowOffset = CGSize(width: 2, height: 6)
        mainView.layer.masksToBounds=false
        mainView.layer.shadowRadius = 4.0
        mainView.layer.shadowOpacity = 1.0
        mainView.layer.shadowColor=UIColor.gray.cgColor
        mainView.layer.cornerRadius = 15
        
        calcContaButton.isEnabled = false
        
        valorASerDivididoLabel.text = "Valor da conta"
        valorContaTotalTextField.delegate = self
        
        gorjetaSwitch.selectedSegmentIndex
        
        calcContaButton.setTitle("calc", for: .normal)
        calcContaButton.backgroundColor = .systemBlue
        calcContaButton.setTitleColor(.white, for: .normal)
        calcContaButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        qtdDivisao.autorepeat = true
        qtdDivisao.maximumValue = 10
        qtdDivisao.minimumValue = 1
        
        
    }
    
    @IBAction func tappedCalcButton(_ sender: Any) {
        print("botao apertado")
        
        if gorjetaSwitch.selectedSegmentIndex == 0 {
            self.calcConta()
        }else {
            self.calcContaComGorjeta()
        }
        
        switch gorjetaSwitch.selectedSegmentIndex
        {
        case 0:
            self.calcConta()
        case 1:
            print("10% selecionado")
            self.calcContaComGorjeta()
        default:
            break
        }
    }
    
    
    
    @IBAction func gorjetaSelectSegmentControl(_ sender: Any) {
        
    }
    
    @IBAction func tappedQtdDivisaoLabel(_ sender: Any) {
        //print(qtdDivisao.value)
        qtdDivisaoLabel.text = String(Int(qtdDivisao.value))
    }
    
    func calcConta(){
        let valorConta = Double((valorContaTotalTextField.text?.replacingOccurrences(of: ",", with: ".")) ?? "0.0") ?? 00
        let qtdDePessoas = Double(qtdDivisao.value)
        
        let calc = valorConta / qtdDePessoas
        
        self.valorASerDivididoLabel.text? = String(calc)
    }
    
    func calcContaComGorjeta(){
        let valorConta = Double((valorContaTotalTextField.text?.replacingOccurrences(of: ",", with: ".")) ?? "0.0") ?? 00
        let qtdDePessoas = Double(qtdDivisao.value)
        
        let calc = (valorConta / qtdDePessoas )
        let gorjeta = calc + calc * 0.1
        
        self.valorASerDivididoLabel.text? = String(gorjeta)
    }
    
    private func configTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CalcVC.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(){
        view.endEditing(true)
    }
    
}

extension CalcVC : UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }else {
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
            if valorContaTotalTextField.text == ""  &&  qtdDivisao.value <= 0 {
                calcContaButton.isEnabled = false
            }else {
                calcContaButton.isEnabled = true
            }
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("baixando teclado")
        textField.resignFirstResponder()
        return true
    }
}
