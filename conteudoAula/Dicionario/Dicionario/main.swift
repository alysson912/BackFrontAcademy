//
//  main.swift
//  Dicionario
//
//  Created by ALYSSON MENEZES on 18/08/22.
//

import Foundation

//Mark: Dicionario
// nao ordenado, a ordem dos objetos nao importa
// nao trabalha com indices
// trabalha com Key (chaves)
// trabalha com value
// chaves nao podem ser boolean ou objetos


//          CHAVE  TIPO DE OBJETP
var nota : [ Int : String] = [10: "TROLLER", 1: "FERRRI", -4: "BMW", 0: "FIAT"  ]


// print(nota) imprimindo dicionario completo

//print(nota[0] ?? "Deu ruim ") // caso dê erro exiba "deu ruim "


//MARK: Adicionar novo elemento no dicionario

nota.updateValue("Lamborgini", forKey: 324)

// print( nota)
// OBS: SE INFORMAR UMA CHAVE JA EXISTENTE O ITEM SERA SUBSTITUIDO
// SE CRIAR O VALOR  SEM CHAVE UMA NOVA CHAVE SERA GERADA

//MARK: REMOVER ITEM

nota.removeValue(forKey: -4)

print(nota)
