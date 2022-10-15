//
//  ViewController.swift
//  DivideAE
//
//  Created by ALYSSON MENEZES on 13/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func nextScreenButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "CalcVC", bundle: nil).instantiateViewController(withIdentifier: "CalcVC") as? CalcVC
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
}

