//
//  CustomTableViewCell.swift
//  appRoleta
//
//  Created by ALYSSON DODO on 24/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var participantesImageView: UIImageView!
    
    @IBOutlet weak var descricaoLabel: UILabel!
    
    
    
    static  let identifier = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(user : Pessoa){
        self.participantesImageView.image = user.image
        self.descricaoLabel.text = user.nome
    }
    
}
