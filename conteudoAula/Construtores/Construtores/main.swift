//
//  main.swift
//  Construtores
//
//  Created by ALYSSON MENEZES on 01/09/22.
//

import Foundation

// MARK: CONSTRUTORES, AO USAR A CLASSE SEREMOS OBRIGADOS A DEFINIR VALORES PADROES  PARA CADA VARIAVEL, OU  "INICIALIZAR " CADA VARIAVEL
// MARK: NA STRUCT ELE CRIA UM INICIALIZADOR POR PADRAO, SENDO ASSIM NAO PRECISAMOS FAZER ISSO NA MAO
class Pessoa {
    
    let nome : String?
    let idade : Int
    let altura : String
    
    init(nome : String, idade : Int, altura : String) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
    }
    
}

let user1 : Pessoa = Pessoa(nome: "Alysson", idade: 25, altura: "1.73 ")
let user2 : Pessoa = Pessoa(nome: "Ana", idade: 18, altura: "1.63 ")

//print(user1.nome , user1.idade, user1.altura)
//print(user2.nome , user2.idade, user2.altura)

//MARK: DESAFIO

class Aluno {
    let nome : String
    let idade : Int
    let turma : String
    var notas : [Float]
    
    init( nome : String, idade : Int ,turma : String, notas : [Float]) {
        self.nome = nome
        self.idade = idade
        self.turma = turma
       self.notas = notas
        
    }
    func calcularMedia(){
        var soma : Float = 0
        
        for i in notas{
         soma = soma + i
        }
        let media = soma / Float( notas.count)
             
            
          print("Aluno: \(nome) teve a média: \(media), e está na \(turma)")
        }
       
        
      
    
    }


let aluno1 : Aluno = Aluno(nome: "Caio", idade: 17, turma: "A", notas: [3,8,8,8])

//print(aluno1.notas)


aluno1.calcularMedia()
