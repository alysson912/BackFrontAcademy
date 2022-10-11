//
//  Tela03VC.swift
//  Desafio_13_Navigation-programatic
//
//  Created by ALYSSON MENEZES on 11/10/22.
//

import UIKit

class Tela03VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Tela04VC", bundle: nil).instantiateViewController(withIdentifier: "Tela04VC") as? Tela04VC
        // o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
