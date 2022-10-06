//
//  Tela2ViewController.swift
//  LifeCycle
//
//  Created by ALYSSON MENEZES on 06/10/22.
//

import UIKit

class Tela2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BotaoTela2(_ sender: Any) {
        self.performSegue(withIdentifier: "Tela2Reference", sender: nil)
    
    }
    
}
