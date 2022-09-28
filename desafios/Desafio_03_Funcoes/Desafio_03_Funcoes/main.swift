//
//  main.swift
//  Desafio_03_Funcoes
//
//  Created by ALYSSON MENEZES on 04/08/22.
//

import Foundation



//func soma (_ valor1: Int,_ valor2 : Int,_ valor3 : Int) -> Int{
//    var total = valor1 + valor2 + valor3
//    return total
//}
//
//print(soma(5, 3, 6)) // _ usado para ocultar a variavel ao digitar
//
//
//
//func exibirEmConsole(){
//    //print("Olá Mundo! estou aprendendo a criar minhas primeiras funções !  ")
//}
//
//var exibir  = exibirEmConsole()




//func calcDesconto ( _ user : Double ,_  sexo : Bool ){
//
//    if user >= 300 && sexo == true{
//        print("desconto aplicado")
//        print("Sexo Feminino")
//
//
//    }
//    else if  user <= 300 && sexo == false  {
//    print( "Desconto nao aplicado ")
//        print("Sexo masculino")
//
//    }
//
//    else {
//        print("\(user ), \(sexo) Invalido ! ")
//    }
//
//}
//
//calcDesconto(250, true)


// crie uma funcao a qual tera um retorno do tipo int e tambem tera 4 parametros( avaliacao1 : Int, avaliacao2 : Int, avaliacao3 : Int) e tambem retorne a media do aluno com a seguinte frase: " A media do aluno foi : \(media )"


func media (_ avaliacao1 : Int,_ avaliacao2 : Int,_ avaliacao3 : Int,_ avaliacao4 : Int) -> String  {
    let media = ( avaliacao1 + avaliacao2 + avaliacao3 + avaliacao4) / 4
    
    return "Media: \(media)"
    
}

let resultado =  media(6, 5, 10, 3)
print(resultado)
