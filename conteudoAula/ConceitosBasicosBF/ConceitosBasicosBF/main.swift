//
//  main.swift
//  ConceitosBasicosBF
//
//  Created by ALYSSON MENEZES on 02/08/22.
////
//
//import Foundation
////MARK: VARIAVEIS
//var name : String = "Alysson"
//var idade : Int = 24
//print("\(name) \(idade)")
//
////MARK: Int
//
//var ano : Int = 2022
//var qtdFilhos : Int
//
////MARK: FLOAT
//
//var altura : Float = 1.73
//var peso : Float = 100.2
//
////MARK: Double
//
//var pesoDouble : Double = 2.4902590435
//var alturaDouble : Double = 4.234342423
//
//// MARK: Booleano
//
//var isAdulto : Bool = true

////MARK: SOMA
//var num1 : Int = 5
// var num2  : Int = 25
// var soma = num1 + num2
//
//print(soma)

//MARK: Subtraçao

//var num1 : Int = 50
// var num2  : Int = 25
// var soma = num1 - num2
//
//print(soma)

//MARK: Multiplicaçao

//var num1 : Int = 50
// var num2  : Int = 25
// var multiplicacao = num1 * num2
//
//print(multiplicacao)

//MARK: Divisao
//var num1 : Int = 50
// var num2  : Int = 25
// var divisao = num1 / num2
//
//print(divisao)

//MARK: conversao de valores String para Int CONTENÇAO

var numero1 : String = "5454"
//var num2 : Int = Int( num1)! // ! garanto que a string é um numero
////// force unwrap
var numero2 : Int = Int( numero1) ?? 0 // retorna do mesmo tipo (no caso o Int)
//print( num2)
//// OBS Nunca ultilizar isso !
//
////MARK:  int para string
//var num1 : Int = 2342
//var num2 : String  = String( num1)
//
//print(num2)
//
////MARK:Concartenacao
//
//var frase1 : String = " O valor da soma é: 10"
//var frase2 : String = " reais "
//var resultText : String = frase1 + String(frase1) + frase2
//print(resultText)
//
////MARK: Interpolaçao
//
//var fraseResultadoInterpolado: String = " O valor da soma é \(frase1)"


//MARK: EXERCICIOS

var umNumeroA : Int = 50
var umNumeroB : Double = 4.3

var umString : String = " Nome Qualquer  "

var soma = Double(umNumeroA)  + umNumeroB

print( "Variavel 01  = \(umNumeroA), Variavel 01  = \(umNumeroB)")
print(" Soma = \(soma)")


var diferenca = Double(umNumeroA)  /  umNumeroB
print( "Valor da Subtracao = \(diferenca)")

//1 ano = 365 dias
//1 dia = 24 horas
//1 hora = 60 minutos
//1 minuto = 60 segundos
//
//Portanto,
//60 x 60 = 3600 seg em 1 hora
//24 x 3600 = 86400 seg em 1 dia
//86400 x 365 = 31536000 seg em 1 ano

let dias : Int = 365
let horas : Float = 24
let minutos : Double = 60
let segundos : Int = 60
let total : Double  = Double (dias * Int(Double(horas)) * Int(minutos) * segundos) // convertendo tudo


print( "1 Ano possui: \(total)")


var num1 : Int = 1
var num2 : String = String(num1)
print(num2)

var num3 : Float = 0.3
var num4 : String = String(num3)
print(num4)

var num5 : Double = 0.4
var num6 : String = String(num5)
print(num6)
