//
//  main.swift
//  Heranca
//
//  Created by ALYSSON MENEZES on 06/09/22.
//MARK: HERANCA

import Foundation

// Class Pai // Super Class
class Animal {
    
    var nome : String
    var cor : String
    var sexo : String
    
    init(nome : String, cor : String, sexo : String) {
        self.nome = nome
        self.cor = cor
        self.sexo = sexo
    }
    
    func andar(){
        print("Andando")
    }
    func dormir(){
        print("Dormindo")
    }
    
}

class Cachorro : Animal{
    var  qtdPatas : Int

    
    init( qtdPatas : Int, nome : String, cor : String, sexo : String ){
        self.qtdPatas = qtdPatas
        super.init(nome: nome, cor: cor, sexo: sexo)
    }
}
let doguinho :Cachorro = Cachorro(qtdPatas: 4, nome: "Ana", cor: "Caramelo", sexo: "F")

//----
class Veiculo {
    var tipo : String
    var fabricante : String
    var modelo : String
    
    init(marca : String, cor : String, modelo : String) {
        self.tipo = marca
        self.fabricante = cor
        self.modelo = modelo
        
    }
}

class Carro : Veiculo {
    var qtdPeneus : Int
    
    init(qtdPeneus: Int, marca: String, cor: String, modelo: String) {
        self.qtdPeneus = qtdPeneus
        super.init(marca: marca, cor: marca, modelo: modelo) //
    }
}

class Moto : Veiculo {
    var cinlindradas : String
    
    init(marca: String, cor: String, modelo: String, cinlindradas : String) {
        self.cinlindradas = cinlindradas
        super.init(marca: marca, cor: cor, modelo: modelo)
    }
}

class Barco : Veiculo{
    var tamanho =  "Grande"
}

let veiculo1 : Carro = Carro(qtdPeneus: 4, marca: "Audi", cor: "Preto", modelo: "A3")
let veiculo2 : Moto = Moto(marca: "Honda", cor: "Vermelho", modelo: "Bross", cinlindradas: "160")
let veiculo3 : Barco = Barco(marca: "Quaquer", cor: "Branco", modelo: "XPTO")

print(veiculo1.qtdPeneus, veiculo1.modelo)
print(veiculo3.modelo, veiculo3.fabricante)

