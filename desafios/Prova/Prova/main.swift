//
//  main.swift
//  Prova
//
//  Created by ALYSSON MENEZES on 13/09/22.
//

import Foundation
class Humano {
    var nome : String
    var idade : Int
    var salario : Double
    var peso : Double
    var altura : Double
    
    init(nome: String, idade: Int, salario: Double, peso: Double, altura: Double) {
        self.nome = nome
        self.idade = idade
        self.salario = salario
        self.peso = peso
        self.altura = altura
    }
    func calculaIMC() -> Double {
        var imc : Double = 0
        imc = self.peso / (self.altura * self.altura)
        if imc <= 0 {
            print("Valor Inválido")
        }
        else if imc < 18.5 {
            print("A baixo do peso")
        }else if imc < 24.99 {
            print("Peso Normal")
        }else if imc < 29.99{
            print("Sobre Peso")
        }else if imc > 29.99{
            print("Obesidade")
        }else {
            print("Peso Inválido")
        }
        return imc
    }
}
class Alysson : Humano {
    var gostoDeComer : [String]
    var sobreNome : String
    var nomeCompleto : String
    
    init(nome: String, idade: Int, salario: Double, peso: Double, altura: Double,  gostoDeComer: [String], sobreNome: String, nomeCompleto: String) {
        self.gostoDeComer = gostoDeComer
        self.sobreNome = sobreNome
        self.nomeCompleto = nomeCompleto
        super.init(nome: nome, idade: idade, salario: salario, peso: peso, altura: altura)
    }
    func imprimir(){
        print(pessoa1.nome, pessoa1.idade, pessoa1.salario, pessoa1.peso, pessoa1.altura, pessoa1.gostoDeComer, pessoa1.sobreNome, pessoa1.nomeCompleto)
    }
    
    func retornaItens()-> Any {
          return  (gostoDeComer.count, gostoDeComer.first, gostoDeComer.last)
    }
    
    func removeItem(itens: [String]) {
        
        // forma 1
//        for i in itens{
//            gostoDeComer = gostoDeComer.filter{ $0 != i }
//  }
     // forma 2
    gostoDeComer.removeAll(where: {itens.contains($0)})
        print( gostoDeComer)
        }
    
    }

let pessoa1 : Alysson = Alysson(nome: "Alysson", idade: 25, salario: 1600, peso: 130.0, altura: 1.73, gostoDeComer: ["Sushi", "macarrao", "Coxinha", "Peixe"] , sobreNome: "DODO", nomeCompleto: "Alysson Menezes dodo")
//pessoa1.imprimir()
// exercicio 2
//print( pessoa1.calculaIMC())
//print( pessoa1.retornaItens())
//print(pessoa1.retornaItens())

print(pessoa1.gostoDeComer)
pessoa1.removeItem(itens: ["macarrao"])


