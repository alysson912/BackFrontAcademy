//
//  HomeTableViewCell.swift
//  TableViewBasico
//
//  Created by ALYSSON MENEZES on 07/11/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameTextLabel: UILabel!
    
    static let identifier : String = "HomeTableViewCell" // SEMPRE usar id com mesmo nome da classe
    // static nao necessita de instancia = caso tenha
    // buscando a parte grafica da celula
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    
    
// MARK: CICLO DE VIDA DELA = VIEW DIDLOAD PARA CELL
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
 
    
    func setupCell(){
        self.nameTextLabel.text = "Alysson"
    }
}
