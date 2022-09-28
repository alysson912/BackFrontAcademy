//
//  main.swift
//  Condicionais
//
//  Created by ALYSSON MENEZES on 23/08/22.
//

import Foundation

//MARK: ESTRUTURA DE REPETIÇÃO ( IF E ELSE)



func alunosMedia(_ nota1  : Double,_ nota2 : Double,_ nota3 : Double,_ nota4 : Double) -> String {
    let media = ( nota1 + nota2 + nota3 + nota4)/4
    if media <= 0 {
     return  "notas invalidas"
    }
    else if media >= 6 {
        return "Parabens! tirou nota azul"
    }else {
        return "Ops, voce precisa estudar mais !"
    }
}
// alunosMedia(5, 1, 7, 6)


func ganharPresente(_ foiUmMeninoBom : Bool,_ valor1  : Double,_ valor2 : Double,_ valor3  : Double,_ valor4 : Double){
    
    
    if foiUmMeninoBom  || ((valor1 + valor2 + valor3 + valor4 ) / 4 ) >= 6 { // nesse caso se qualquer condicao for positiva ele vai ganhar presente, se usar o && todas as condicoes precisam serem positivas para ganhar presente
   
        print("vai ganhar presente ")
    } else{
        print("Nao vai ganhar presente!")
    }
}


  ganharPresente(true,  4, 3, 6, 7)
