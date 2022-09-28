//
//  main.swift
//  Opcionais
//
//  Created by ALYSSON MENEZES on 30/08/22.
//

import Foundation

//MARK: OPCIONAIS
// É QUANDO PODEMOS TER UM VALOR OU NAO (nil)
// nil significa =  nao existe um valor
//
// somos obrigados a passar um valor em uma variavel

//var nomeAluno : String? // quando colocamos o ? ele retorna o valor ou se nao existir retorna nil
//var nomeAluno : String? = "" // imprime variavel do tipo String opcional vazia
var nomeAluno : String?
nomeAluno = "Alysson"

//print(nomeAluno)

// podemos criar variavel opcional sem nenhum valor dentro

var sobreNome : String = nomeAluno ?? "Ana" // so vai para o opcional se o valor for nil

//print(sobreNome)



// desafio  Crie uma variavel var valoriotal surino uma variavell chama valorkeal PAgora taca a variavel A Print a variavel valorkeA

var valorTotal: String?  = "valor total é 50 reais"
var valorReal : Int = Int (valorTotal ?? "") ?? 0
//print(valorReal)
















var num1 :String? = "Valor é 50 reais"
var num2 : Int

    num2 = Int(num1 ?? "") ?? 05648

//print(num2)



















var valor1 : String? = "valor total 2423-94"

var valor2 : Int

valor2 = Int(valor1 ?? "") ?? 097234

print(valor2)
