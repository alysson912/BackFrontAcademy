//
//  main.swift
//  POO
//
//  Created by ALYSSON MENEZES on 25/08/22.
// Classe trabalhamos com referencia !! = podemos referenciar uma classe com a outra

// a classe compartilha arquivos, onde 1 mexer irá refletir para todo mundo
// ex: casaAlysson, casaAline,
//quando digo casaAlysson = casaAline
// casaAlysson tera todos os atributos da casa de aline
import Foundation

class Pessoa {
    var nome = "alysson"
    var contato = "al@gmail.com"
    var idade: Int = 14
    var altura :Double =  1.73
    var corCabelo : String = "Preto"
   
    init( nome : String, idade : Int, altura : Double,  contato: String, corCabelo: String) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.contato = contato
        self.corCabelo = corCabelo
    }
    func falar () -> String {
    return "Falando"
    }
//
//    func andar () {
//        print( "andando")
//    }
//    func dormir (){
//        print("Domir")
//    }

}

var aluno1 : Pessoa = Pessoa(nome: "alysson", idade: 25, altura: 1.78, contato: "al@gmail.com", corCabelo: "branco")
var aluno2 : Pessoa = Pessoa(nome: "Ana", idade: 20, altura: 1.6, contato: "ana@gmail.com", corCabelo: "Loiro")
aluno1 = aluno2 // a classe por trabalhar com referencia se algum atributo  "nome" de aluno1 for alterado "nome" em aluno 2 tambem
// será alterado ! esses 2 objetos ficam interligados, temos uma unica referencia de memoria

print(aluno1.nome)
print(aluno1.falar())

class Carro {
    var marca : String = "BMW"
    var ano : Int = 2020
    var cor : String = "Vermelho"
    var categoria: String = "SUV"
    var potencia : String = "1000 hp"
    
    init(marca : String, ano : Int, cor : String, categoria : String, potencia : String) {
        self.marca = marca
        self.ano = ano
        self.cor = cor
        self.categoria = categoria
        self.potencia = potencia
    }
    
    func ligarCarro(){
        print("Ligado")
    }
    func andar(){
        print("andando")
    }
    func parar(){
        print("parando")
    }
}




class Produto {
    let preco : Double
    let nome : String
    let validade: String
    let disponibilidade : Bool
    let peso : Double
    
    
    init( preco : Double, nome : String, validade : String, disponibilidade : Bool, peso : Double){
        self.preco = preco
        self.nome = nome
        self.validade = validade
        self.disponibilidade = disponibilidade
        self.peso = peso
    }
    
    func abrir(){
        print("Abrindo Produto")
    }
    func guardarProduto(){
        print("Guardando Produto")
    }
    func venderProduto(){
        print("Vender Produto")
    }
}


