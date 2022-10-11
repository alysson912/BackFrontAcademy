//
//  ViewController.swift
//  Desafio_13_Navigation-programatic
//
//  Created by ALYSSON MENEZES on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tappedButton01(_ sender: UIButton) {
       // referencia direto do botao
        
    }
    
    
    @IBAction func tappedButton2(_ sender: UIButton) {
        
        // referencia da viewController
       performSegue(withIdentifier: "GoTela03", sender: nil)
    }
    
}

