import UIKit

var name1 = "Fulano"
var name2 = "Ciclano"

var names = ["Fulano", "Ciclano", "Beltrano"]

var lotteryNumber: [Int] = []
var phoneNumber: [String]? //Optional

var ages: [UInt8] = [9,7,12,15,22] //UInt8

var guests = ["Joao", "Paula", "Alexandre", "Patricia", "Sandra"]

print(guests.count)
print(guests.isEmpty)

print(guests[1])
guests[0] = "Henrique"

print(guests)

//TIROU OS INDICES 0,1 E ACRESCENTOU MAIS VALORES
guests[0...1] = ["Eric", "Roberto", "Joana", "Bianca"]
print(guests)

//FIRST TAMBEM RETORNA O PRIMEIRO VALOR, POREM COMO OPTIONAL
//print(guests.first)
if let first = guests.first {
    print(first)
}

if let last = guests.last {
    print(last)
}

//ADICIONAR VALORES AO ARRAY
guests += ["Sanndro", "Helena", "Elen"]
guests.append("Edina")

guests.insert("Romildo", at: 2)
print(guests)

//REMOVER
//guests.removeFirst() //REMOVE O PRIMEIRO
//guests.removeLast() // REMOVE O ULTIMO
//guests.remove(at: 2) //REMOVE UM INDICE
//guests.removeAll() //REMOVE TUDO

if guests.contains("Helena") {
    print("A Helena foi convidada")
}
