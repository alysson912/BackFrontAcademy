//
//  CarTableViewCell.swift
//  tableViewComCollectionView
//
//  Created by ALYSSON MENEZES on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {

   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    static let identifier : String = "CarTableViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
}
