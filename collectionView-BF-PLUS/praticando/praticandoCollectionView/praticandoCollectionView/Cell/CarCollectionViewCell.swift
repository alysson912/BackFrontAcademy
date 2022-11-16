//
//  CarCollectionViewCell.swift
//  praticandoCollectionView
//
//  Created by ALYSSON MENEZES on 15/11/22.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier : String = "CarCollectionViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configCell( nameImage : String){
        imageView.image = UIImage(named: nameImage)
        imageView.contentMode = .scaleAspectFill
    }
}
