//
//  main.swift
//  Desafio_04_Logica
//
//  Created by ALYSSON MENEZES on 06/08/22.
//

import Foundation

//MARK: EXERCICIOS FUNÇÕES
//1-Crie uma função que print o seu nome completo

func exibirNome(){
    let nome = "Alysson Menezes Dodo"
    print("Meu Nome é: \(nome)")
}
let chamaFunc = exibirNome()
print("_______________________________________________________")

//2-Crie uma função que print a sua data de nascimento

func exibirDataNasc(){
    let nascimento = "21/10/1997"
    print("Data de nascimento: \(nascimento)")
}
let exibirData = exibirDataNasc()
print("_______________________________________________________")

//3-Crie uma função que print a cor da camiseta que você
//está usando
func exibirCorCamisa(){
    let cor = "Preto"
    print("Cor da camisa:  \(cor)")
}
let exibirCor = exibirCorCamisa()

print("_______________________________________________________")

//4- Crie uma função que print a sua altura
func exibirAltura(){
    let altura = ""
    print("\(altura)")
}
     let altura = exibirAltura()

print("_______________________________________________________")
//5-Crie uma função que print a sua comida favorita

private func exibirComida(_ comida : String) {
  
    print("Comida Favorita:\(comida)")
}
let chamaComida = exibirComida("Galinha caipira")

print("_______________________________________________________")
//6-Crie uma função que receba 2 parâmetros do tipo Inte
//print a soma deles

func soma (_ num1 : Int,_ num2 : Int) -> Int {
    let soma = num1 + num2
    
    print( "Valor da soma = \(soma)")
    return soma
}

let recebeFuncSoma = soma(30, 25)

print("_______________________________________________________")
//7-Crie uma função que receba 2 parâmetros do tipo
//String e print os mesmos usando string interpolation

func exibirDoisValores(_ valor1 : String,_ valor2 : String)  {
    
    print("Valor 01 : \(valor1) , Valor 02 \(valor2)")
}

let recebeFuncDoisValores = exibirDoisValores("Alysson", "Menezes")

print("_______________________________________________________")
//8- Crie uma função que receba 2 parâmetros do tipo
//Double e print a média deles

func mediaValores (_ valor1 : Double, _ valor2: Double) -> Double{
    let media = (valor1 + valor2) / 2
    
    print("Media : \(media)")
    return media
}
let valMedia = mediaValores(6, 7)

print("_______________________________________________________")
//9-Crie uma função que receba 1 parâmetro do tipo
//Double e print o resultado desse parâmetro vezes 100

func printar100x (_ valor : Double) {
        
    for i  in 0...100 {
        print("Valor \(valor) foi exibido : \(i)x")
    }
}
let print100x = printar100x(55)

print("_______________________________________________________")
//10- Crie uma função que receba 1 parâmetro do tipo Int e 1
//parâmetro do tipo Double e print a subtração dos mesmos

func subTiposDiferentes(_ valor1 : Int, _ valor2 : Double) {
    var resultadoSub: Int = valor1 - Int(valor2)
    
    print(" Resultado = \(resultadoSub)")
}
let chamaSubTiposDiferentes = subTiposDiferentes(45, 33.1)

print("_______________________________________________________")
//11-Crie uma função que retorne uma string qualquer
func retornaString () -> String {
    return "String Qualquer"
}

print (retornaString())

print("_______________________________________________________")
//12-Crie uma função que receba 3 parâmetros do tipo Inte
//retorne a soma dos três, dividido por 2
func mediaRetorna (_ valor1: Int, _ valor2 : Int, _ valor3: Int) -> Int{
    
    return  (valor1 + valor2 + valor3) / 2
}


print( mediaRetorna(6, 3, 7))

print("_______________________________________________________")
//13-Crie uma função que receba 1 parâmetro do tipo
//Double e retorne o valor desse parâmetro vezes o valor do dólar

func multiploValor (_ valor : Double) -> Double{
    
//    for i in 1...Int(valor) {
//        print("Valor: \(valor) o numero foi chamado \(i)x")
//    }
    let valorDolar : Double = 5.14
    return  valor * valorDolar
}

print("Valor do dolar: \(multiploValor(5))")

print("_______________________________________________________")
//dólar
//14- Crie uma função que retorne a média das 3 notas do
//Joäozinho
func mediaJoao (_ nota1: Double,_ nota2: Double,_ nota3: Double) -> Double {
    
    let media = (nota1 + nota2 + nota3) / 3
    
    return media
}
print("Media final de Joao foi :  \(mediaJoao(4, 3, 10.0)) ")

print("_______________________________________________________")
//15- Crie uma função que receba 2 parâmetros do tipo Int e
//retorne uma string " A soma desses valores é VALOR DA

func retornaSomaString(_ valor1 : Int,_ valor2 : Int) -> String {
    let soma : String = String( valor1 + valor2)
    
    return soma
}
print( "Valor da Soma = \(soma(6, 4))")


//SOMA"
