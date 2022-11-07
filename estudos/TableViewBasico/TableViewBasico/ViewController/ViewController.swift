//
//  ViewController.swift
//  TableViewBasico
//
//  Created by ALYSSON MENEZES on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var homeTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setupHomeTableView(){
        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self // entrando em conformidade com o protocolo
        // register cell
    }
    
    
    
    
    
}
//MARK: PROTOCOLOS DA TABLEVIEW e seus metodos obrigatórios !! 
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
