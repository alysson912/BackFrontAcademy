//
//  ViewController.swift
//  collectionView
//
//  Created by ALYSSON MENEZES on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data : [String] = ["car1" ,"car2", "car3","car4", "car5", "car6"  ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }

    
    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero // para que a collection respeite o que setamos a ela
            
        }
    }
    
    
}


extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // MARK:  Numero de intens por section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  data.count
    }
    // MARK:  Numero de intens das celulas
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
            cell?.setupCell(nameImage: data[ indexPath.row])
            return cell ?? UICollectionViewCell()
            
        }
    }
    // MARK: indicar a altura / largura da cekyuka
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath:  IndexPath) -> CGSize {
        return CGSize()
    }
    

