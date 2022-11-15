//
//  ViewController.swift
//  collectionView-basico
//
//  Created by ALYSSON MENEZES on 15/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var data : [String] = [ "car1","car2","car3","car4","car5","car6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configCollectionView()
        
    }

    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // if let para remover a opcionalidade
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero // desabilitando a opcao de se auto adequar as telas automatica
        }
        //MARK: register cell
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    
    
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        
        cell?.setupCell(nameImage: data[indexPath.row])
        
        return cell ??  UICollectionViewCell()
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 193)
    }
   
}



