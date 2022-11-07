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
        setupHomeTableView()
    }
    
    func setupHomeTableView(){
        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self // entrando em conformidade com o protocolo
        // register cell
        homeTableView.register(HomeTableViewCell.nib(), forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    
    
    
    
}
//MARK: PROTOCOLOS DA TABLEVIEW e seus metodos obrigatórios !!
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath)
        as? HomeTableViewCell // usado para acessar o conteudo da classe
        
        return  cell ?? UITableViewCell()
    }
    
    
}
