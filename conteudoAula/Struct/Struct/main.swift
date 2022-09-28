//
//  main.swift
//  Struct
//
//  Created by ALYSSON MENEZES on 20/09/22.

// Classe trabalha com reference type
// Classe = Se altera em 1 altera todos
// Struct = Se altera 1 as alteracoes se refletem somente a ele.
// PRINCIPAL CARACTERISTICA DA STRUC = TRABALHA COM VALORES
// CLass usa herença
/// Struct Nao usa Herença .
//Classe aproveita atributos entre objetos
// Struct faz copias de valores
// Weak, caso a referencia  nao seja mais usada (referencia de memoria) ele usa o "gabage colector" para apagar


import Foundation

// Struct

// Sua principal caracteristica é: Trabalha com VALOR
// STRUCT não trabalha com Herança

class Pessoa {
    
    var nome: String
    var sobrenome: String
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
    
}

var caio: Pessoa = Pessoa(nome: "Caio", sobrenome: "Fabrini")
var lucas: Pessoa = Pessoa(nome: "Lucas", sobrenome: "Munho")

print(caio.nome)
print(lucas.nome)

caio = lucas

print(caio.nome)
print(lucas.nome)

lucas.sobrenome = "Algum ai"

print(caio.sobrenome)
print(lucas.sobrenome)

caio.sobrenome = "Outro ai"

print(caio.sobrenome)
print(lucas.sobrenome)
