//
//  ViewController.swift
//  Desafio-15
//
//  Created by ALYSSON MENEZES on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var sobreNomeTextField: UITextField!
    @IBOutlet weak var idadeTextField: UITextField!
    @IBOutlet weak var profissao: UITextField!
    @IBOutlet weak var goToTela02: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoToTela02(_ sender: Any) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        let alysson = Pessoa(nome: nomeTextField.text ?? "" , sobreNome: sobreNomeTextField.text ?? "", idade: idadeTextField.text ?? "", profissao: profissao.text ?? "")
        
        vc?.pessoa = alysson
        
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

