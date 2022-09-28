//
//  ViewController.swift
//  PrimeiroAppLoginBFCurso
//
//  Created by ALYSSON MENEZES on 20/09/22.
//

//MARK: O codigo é favorecido quando se comparado com storyboard
//MARK: Boa pratica -> sempre a cima do viewDidLoad()


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        // primeiro ciclo de vida a ser disparado, a partir do momento que a view foi renderizada e criado os elementos
        super.viewDidLoad()
       nameLabelDetail()
       setupLoginButton()
    }

    func nameLabelDetail(){
        nameLabel.text = "Alysson"
        nameLabel.textColor = .black
    }

    func setupLoginButton(){
        loginButton.setTitle("Nome Completo", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.layer.cornerRadius = 8
        loginButton.tintColor = .white
        
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        print("Botao pressionado !")
        //changeBackgroundColor()
        
        nameLabel.text = "Alysson Menezes Dodo"
    }
    
    func changeBackgroundColor(){
        view.backgroundColor = .yellow
    }
}

