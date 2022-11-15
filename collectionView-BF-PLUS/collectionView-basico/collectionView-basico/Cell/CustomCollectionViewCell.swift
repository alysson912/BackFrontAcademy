//
//  CustomCollectionViewCell.swift
//  collectionView-basico
//
//  Created by ALYSSON MENEZES on 15/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var carImageView: UIImageView!
    
    
    static let identifier : String = "CustomCollectionViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(nameImage: String){
        carImageView.image = UIImage(named: nameImage)
        carImageView.contentMode = .scaleAspectFill
    }

}
