//
//  ViewController.swift
//  LifeCycle
//
//  Created by ALYSSON MENEZES on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
}

