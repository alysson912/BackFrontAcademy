//
//  main.swift
//  Desafio_06_Condicionais
//
//  Created by ALYSSON MENEZES on 25/08/22.
//
//MARK: DESAFIO CONDICIONAIS
import Foundation

//1-Crie uma função que receba dois parâmetros
//(nota1: Double, nota2: Double) e retorne "Aluno
//aprovado" se a media das notas for maior ou igual
//a 7. Caso contrário retorne "Aluno reprovado"

func verificaAprovacao(_ valor1: Double, _ valor2  : Double) -> String {
    let media : Double = ( valor1 + valor2) / 2
    
    if media <= 0 {
        print("Nota invalida")
    }else if media <= 7 {
        print("Aluno Reprovado !")
    }else {
        print("Aluno Aprovado !")
    }
    return "Media"
}
//   verificaAprovacao(0, -9)

//2-Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0,
//de 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 de 15% de desconto. Valores acima de 200.0 de 20% de
//desconto. A função tem que ter um retorno do tipoDouble que vai ser o total (parâmetro) com o desconto aplicado de
//acordo com as condições citadas.

func desconto(_ total: Double) -> Double{
    if total < 100.0 {
        print("10% de desconto !")
    }else if total >= 100.0 &&  total <= 200.0 {
        print("15% de desconto !")
    }else {
        print(" 20% de desconto")
    }
    
    return total
}
//desconto(212)

//3-Crie uma função semáforo que receba uma
//parâmetro do tipo string. Se o valor recebido
//no parâmetro for vermelho, retorne "PARE", se for
//amarelo, retorne "ATENÇÃO", se for verde, retorne
//"SIGA EM FRENTE e retorne "PARÂMETRO
//INVÁLIDO" caso o valor recebido seja diferente dos
//já citados.
func semaforo (_ valor : String) -> Any {
    if valor == "vermelho"{
        print("PARE")
    }else if valor == "amarelo" {
        return print("ATENÇÃO")
    }else if valor == "verde"{
        print("SIGA EM FRENTE")
    }else {
        print("INVÁLIDO")
    }
    return valor
}

//semaforo("verde")

//4-Crie uma função que receba dois parâmetros
//(FimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e vc tenha dinheiro, print
//"VAMOS PASSEAR", caso contrário, print "VAMOS
//FICAR EM CASA"

private func passeio (_ FimDeSemana : Bool,_ tenhoDinheiro : Bool){
    if FimDeSemana == true && tenhoDinheiro == true {
        print("Pae ta ON ")
    }else {
        print("VAMOS FICAR EM CASA ")
    }
}
//passeio(false, true)

//5- Crie uma função que receba um parâmetro do
//tipo Int e retorne true se o número recebido for PAR
//e false se o número recebido for iMPAR.
func verificaParOuImpar( valor : Int) -> Int {
    if ((valor % 2 ) == 0) {
        print("\(valor) é Par")
    }else{
        print("\(valor) é Impar")
    }
    return valor
}
//verificaParOuImpar(valor: 231412)
//6-Crie uma função que receba dois parâmetros do
//tipo Double e caso o valor do 1° parâmetro seja
//maior que o valor do 2° parâmetro. Retorne "Bola",
//caso contrário, retorne "Banana"
private func verificaMaioridade(_ valor1 : Double,_ valor2 : Double) {
    
    if valor1 > valor2 {
        print("Bola")
    }else {
        print("Banana")
    }
}
//verificaMaioridade(1, 2)

//7-Crie uma função que receba um parâmetro
//(foiConvidado: Bool). Caso o valor seja true, print
//"Liberado para a festa". Caso contrário, print
//"Infelizmente você não foi convidado"
//

private func festa(_ foiConvidade: Bool){
    if foiConvidade == true {
        print("Liberado para a Festa")
    }else {
        print("Infelizmente você não foi convidado")
    }
}
//festa(false)

//8-Crie uma função
//vamosTomarUma(tenhoDinheiro:Bool,
//meuAmigoTemDinheiro: Bool) e caso um dos dois
//parâmetro seja verdadeiro, retorne "Partiu tomar
//uma". Caso contrário, retorne "Bora ficar em casa
//mesmo =["

func vamostomarUma(_ tenhoDinheiro : Bool,_ meuAmigoTemDinheiro: Bool){
    if tenhoDinheiro == true && meuAmigoTemDinheiro == true {
        print("Partiu tomar uma")
    } else {
        print("Bora ficar em casa mesmo")
    }
}
//vamostomarUma(true, false)


//9- Crie uma func alunosAprovados(alunos: [String:
//Double]). Caso a nota do aluno seja maior ou igual
//a 7.0. Adicione esse aluno em um array de String
//chamado 'aprovados' Ao final de tudo printar o
//array 'aprovados'

private func alunosAprovados (_ alunos : [String : Double]){
    var aprovados : [String] = []
    var reprovados : [ String] = []
    
    for i in alunos {
        //print(" \(i.key) = \(i.value)")
        if i.value >= 7.0{
            aprovados.append(i.key)
        } else {
            reprovados.append(i.key)
           
        }
    }
    print(" Alunos aprovados : \(aprovados)")
    print(" Alunos reprovados :\(reprovados)")
}

// alunosAprovados(["alysson": 7.5, "ana" : 0.1, "Felipe" : 9.0])

//10-Crie uma função que receba uma parâmetro
//(nomes: [String]). Caso o array contenha o nome
//"Sérgio" retorne true. Caso contrário, retorne false.
private func verificaItem (_ nomes: [ String ]) -> Bool{
    for i in nomes {
        if i == "Sérgio"{
            
            print("\(nomes)")
            print("Sérgio está no array")
            return true
        }
    }
    print("Sérgio nao está no Array")
    return false
}
//verificaItem(["Alysson", "Ana", "Daniel", "Sérgio" ])

//11-Crie uma função vcFoiContratado (candidatos: [String: Double]). Caso a nota obtida seja maior
//que 7, adicionar o candidato em um novo dicionário chamado 'aprovadosPrimeirafase! Em seguida
//percorrer esse novo dicionário e caso alguém tenha uma nota maior que 9.5, adicionar o nome
//dele em uma variável chamada 'candidatoAprovado' e a sua nota em uma variável
//chamada 'notaCandidatoAprovado' Ao final, printar a frase: "O cadidato aprovado foi |
//(nome) com a nota \(nota)" Usar esse dicionário pra chamar a função -> var
//candidatos; [String: Double] = ["Ana": 7.5, "Bia"': 6.0, "Renato": 5.0, "Kleber": 8.0, "Isis": 10.01
//func vcFoiContratado( candidatos: [ String : Double]){
//    if
//}

var candidatos2 : [ String : Double] = ["alysson": 7.5, "ana" : 0.1, "Felipe" : 9.0]
func vcFoiContratado(candidatos: [String: Double]){
var aprovadosPrimeiraFase: [String: Double] = [:]

for candidato in candidatos {
print("a chave é: \(candidato.key)")
print("o valor é: \(candidato.value)")
if candidato.value > 7 {
// Verdadeiro
    aprovadosPrimeiraFase.updateValue(candidato.value, forKey: candidato.key)
    }
}
    print(aprovadosPrimeiraFase)
    
}
 vcFoiContratado(candidatos: candidatos2)

