//
//  Tela2ViewController.swift
//  Navigation(Storyboard)
//
//  Created by ALYSSON MENEZES on 05/10/22.
//


import UIKit



class Tela2ViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tappedButtonTela2(_ sender: Any) {
        self.performSegue(withIdentifier: "Tela3ViewController", sender: nil) // nil para enviar informacores 
    }
    
}
