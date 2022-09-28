//
//  main.swift
//  EstruturaDeRepeticao
//
//  Created by ALYSSON MENEZES on 18/08/22.
//

import Foundation

//MARK: WHILE  verifica primeiro

var i : Int = 0

while i < 100 { // menor q 100 imprime ate 99 <= 100 imprime ate o 100
   // print(i)
    i = i + 1
}


//MARK: REPEAT executa primeiro e confere depois
var indexRepeat : Int = 0
repeat {
   // print(indexRepeat)
    indexRepeat = indexRepeat + 1
}while indexRepeat < 10



//MARK: FOR


for index in 10...20 {
   print(index)
}
