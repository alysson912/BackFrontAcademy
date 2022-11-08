//
//  CustomCollectionViewCell.swift
//  collectionView
//
//  Created by ALYSSON MENEZES on 07/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier : String = "CustomCollectionViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }

    func setupCell (nameImage: String){
        carImageView.image = UIImage(named: nameImage)
    }
    
}
