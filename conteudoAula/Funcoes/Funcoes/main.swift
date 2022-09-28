//
//  main.swift
//  Funcoes
//
//  Created by ALYSSON MENEZES on 04/08/22.
//MARK:

import Foundation

var  primeiroNome = "Alysson"
var segundoNome = "Menezes"


//MARK: FUNCAO SEM PARAMETRO E SEM RETORNO
//Uma função sem parâmetro, é apenas um procedimento que executará sempre exatamente os mesmos passos.



//MARK: funcao sem parametro geralmente usada em layout ou funcoes simples

func exibirNome() {
    print("Primeiro Nome: \(primeiroNome), Segundo Nome: \(segundoNome) ")
    
}
exibirNome()

//MARK: funcao c/ parametro sem retorno
// podemos alterar dados que sao passado por ela

func soma ( num1 : Double, num2 : Double){
    print(num1 + num2)
    
}
var resultado = soma(num1: 300, num2: 150)




//MARK: func sem parametro c/ retorno
func funcao () ->  String{ // definindo o tipo de retorno, a funcao espera retorna uma string
    
    return "String qualquer "
}

