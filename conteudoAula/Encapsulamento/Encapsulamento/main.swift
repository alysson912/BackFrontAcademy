//
//  main.swift
//  Encapsulamento
//
//  Created by ALYSSON MENEZES on 06/09/22.
//
//Encapsulamento vem de encapsular, que em programação orientada a objetos significa separar o
//programa em partes, o mais isolado possível. A idéia é tornar o software mais flexível, fácil
//de modificar e de criar novas implementações. O Encapsulamento serve para controlar o acesso
//aos atributos e métodos de uma classe

import Foundation


class Pessoa {
    private var nome : String
    private var cpf : Int
    private var idade : Int
    
 public func getNome () -> String {
        return nome
    }
    public func setNome( nome : String) -> String {
     self.nome = nome
    }
    
    func getCpf () -> Int {
        return cpf
    }
    func setCpf( cpf : Int) -> Int {
        self.cpf = cpf
    }
    
    public func getIdade() -> Int{
        return idade
    }
    public func setIdade(idade : Int) -> Int{
        self.idade = idade
    }
    
    
    
    
    init(nome : String, cpf : Int, idade : Int){
        self.nome = nome
        self.cpf = cpf
        self.idade = idade
    }
    
    
    func acordar(){
        print("Acordado")
    }
    
}

let alysson : Pessoa = Pessoa(nome: "Alysson", cpf: 42394582, idade: 25)

print(alysson.getNome())
alysson.setNome(nome: "Ana")
print(alysson.getNome())

//
//
//class Filho : Pessoa {
//    var nomeEscola : String
//
//     init(nome: String, cpf: Int, idade: Int, nomeEscola : String) {
//        self.nomeEscola = nomeEscola
//        super.init(nome: nome, cpf: cpf, idade: idade)
//    }
//
//    override func acordar() {
//        print("Acordo em 5 Min")
//    }
//}
//
//var alysson : Pessoa = Pessoa(nome: "Alysson", cpf: 2343842, idade: 25)
//var aline : Filho = Filho(nome: "Aline", cpf: 2348342, idade: 32, nomeEscola: "CNEC")
//
//print(alysson.acordar())
//print(aline.acordar())
