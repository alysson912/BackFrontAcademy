//
//  Tela02VC.swift
//  Desafio-15
//
//  Created by ALYSSON MENEZES on 18/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var sobreNomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var profissaoLabel: UILabel!
    
    var pessoa: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeLabel.text = pessoa?.nome
        sobreNomeLabel.text = pessoa?.sobreNome
        idadeLabel.text = pessoa?.idade
        profissaoLabel.text = pessoa?.profissao
        // Do any additional setup after loading the view.
    }
    

}
