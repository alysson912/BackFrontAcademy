//
//  main.swift
//  Repeate&While
//
//  Created by ALYSSON MENEZES on 04/08/22.
//

import Foundation



//MARK: WHILE
// WHILE CONDICAO {}



var count = 0

while count < 100 {
    count = count + 1
    print( "N: \(count)")
    
    if count == 50 {  // condicao pra oara
        break
    }
}
print( "---------------")
// MARK: REPEAT
// FAZ  PRIMEIRO A INSTRUCAO E DEPOIS VERIFICA

var i = 0
repeat {
    print(i)
    i += 1
} while ( i < 30)


//MARK: OS 2 SAO LOOPS POREM REPEAT VERIFICA A CONDICAO IMPOSTA APÓS EXECUTAR
// WHILE CHECA PRIMEIRO A CONDICAO PARA DEPOIS EXECUTAR



