//
//  ViewController.swift
//  appRoleta
//
//  Created by ALYSSON DODO on 24/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var sortearButton: UIButton!
    
    @IBOutlet weak var homeTableView: UITableView!
    
    var data : [Pessoa] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configTableView()
    }

    func configTableView(){
        homeTableView.delegate = self
        homeTableView.dataSource = self
        // register
        homeTableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    
    @IBAction func tappedSortearButton(_ sender: UIButton) {
        data.append(Pessoa(nome: nameTextField.text ?? "", image: UIImage(named: "roleta") ?? UIImage()))
        nameTextField.text = ""
        homeTableView.reloadData()
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return   self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.configCell(user: data[indexPath.row])
        
        
        return cell ??  UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        426
    }
}
