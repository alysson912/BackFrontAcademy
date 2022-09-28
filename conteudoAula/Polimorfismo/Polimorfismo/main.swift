//
//  main.swift
//  Polimorfismo
//
//  Created by ALYSSON MENEZES on 06/09/22.
//MARK: POLIMORFISMO

import Foundation

//Polimorfismo é o princípio pelo qual duas ou mais classes derivadas de uma mesma
//superclasse podem invocar métodos que têm a mesma identificação (assinatura) mas
//comportamentos distintos, especializados para cada classe.



class Pessoa {
    var nome : String
    var cpf : Int
    var idade : Int
    
    init(nome : String, cpf : Int, idade : Int){
        self.nome = nome
        self.cpf = cpf
        self.idade = idade
    }
    
    func acordar(){
        print("Acordado")
    }
    // sobrescrever uma funcao = Polimorfismo
    
}


class Filho : Pessoa {
    var nomeEscola : String
    
     init(nome: String, cpf: Int, idade: Int, nomeEscola : String) {
        self.nomeEscola = nomeEscola
        super.init(nome: nome, cpf: cpf, idade: idade)
    }
    
    override func acordar() {
        print("Acordo em 5 Min")
    }
}

var alysson : Pessoa = Pessoa(nome: "Alysson", cpf: 2343842, idade: 25)
var aline : Filho = Filho(nome: "Aline", cpf: 2348342, idade: 32, nomeEscola: "CNEC")

print(alysson.acordar())
print(aline.acordar())
