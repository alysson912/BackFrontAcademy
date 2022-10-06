//
//  Tela3ViewController.swift
//  Navigation(Storyboard)
//
//  Created by ALYSSON MENEZES on 05/10/22.
//

import UIKit

class Tela3ViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tappedTela3Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)

    }
    
}
