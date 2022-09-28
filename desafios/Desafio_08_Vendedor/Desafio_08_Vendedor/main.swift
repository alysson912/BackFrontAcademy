//
//  main.swift
//  Desafio_08_Vendedor
//
//  Created by ALYSSON MENEZES on 08/09/22.
//

import Foundation

class Vendedor {
    var nome : String
    var idade : Int
    var cpf : String
    var saldoConta : Double
    
    init( nome : String, idade: Int, cpf : String, saldoConta : Double){
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoConta = saldoConta
        
    }
    
    func vender( quantidadeDePecas : Int, tipoDePeca : String){
        if tipoDePeca == "terno" {
            calcTerno(quantidadeDePecas: quantidadeDePecas)
        }else if tipoDePeca == "bone"{
            calcBone(quantidadeDePecas: quantidadeDePecas)
        }else if  tipoDePeca == "vestido"{
            calcVestido(quantidadeDePecas: quantidadeDePecas)
        }else {
            print("verifique os dados informados ")
        }
    }
    
    private func calcTerno (quantidadeDePecas : Int){
        var  desconto : Double = 0
        if quantidadeDePecas >= 3 {
            desconto = Double( 50 * quantidadeDePecas)
        }
        self.saldoConta = Double( 400 * quantidadeDePecas) - desconto
    }
    
    
    private func calcVestido(quantidadeDePecas : Int){
        if quantidadeDePecas == 5 {
            print("parabens, ganhou o vestido")
        }
        self.saldoConta = Double( 900 * quantidadeDePecas)
    }
    
    private func calcBone (quantidadeDePecas : Int){
        if quantidadeDePecas % 2 == 0 {
            saldoConta = 0
        }else {
            saldoConta = 50
        }
    }
}

let venda1 : Vendedor = Vendedor(nome: "aa", idade: 23, cpf: "234432", saldoConta: 54985640)
venda1.vender(quantidadeDePecas: 5, tipoDePeca: "terno")
print(venda1.saldoConta)


