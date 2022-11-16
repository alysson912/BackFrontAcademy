//
//  ViewController.swift
//  praticandoCollectionView
//
//  Created by ALYSSON MENEZES on 15/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeCollectionVIew: UICollectionView!
    
    var data : [ String ] = [ "car1","car2","car3","car4","car5","car6",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configCollectionView()
    }

    func configCollectionView(){
        homeCollectionVIew.delegate = self
        homeCollectionVIew.dataSource = self
    
        if let layout = homeCollectionVIew.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        homeCollectionVIew.register(CarCollectionViewCell.nib(), forCellWithReuseIdentifier: CarCollectionViewCell.identifier)
    }

}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.identifier, for: indexPath) as? CarCollectionViewCell
        cell?.configCell(nameImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
  
}
