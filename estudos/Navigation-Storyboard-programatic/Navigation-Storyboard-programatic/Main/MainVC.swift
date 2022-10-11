//
//  MainVC.swift
//  Navigation-Storyboard-programatic
//
//  Created by ALYSSON MENEZES on 07/10/22.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func tappedTela02(_ sender: UIButton) {
      
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
       // present(vc ?? UIViewController(), animated: true)
        
        print("tapped Button")
    }
    
}
