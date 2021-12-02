import UIKit

var greeting = "Hello, playground"

//If - Else
var hasHeadache: Bool = false
var humor: String = ""

if hasHeadache {
    humor = "Muito p... da vida"
}else{
    humor =  "Felizão"
}

let number = 11
if number % 2 == 0 {
    print("Ele é par")
}else{
    print("Ele é impar")
}


var temperature = 18
var climate = ""

if temperature <= 0 {
    climate = "Frio para demais"
}else if temperature < 14 {
    climate = "Está frio"
}else if temperature < 21 {
    climate = "Temperatura agradavel"
}else if temperature < 30 {
    climate = "Um pouco quente"
}else{
    climate = "Muuuuito quente"
}
print(climate)


let letter = "i"
var letterType = ""

if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "Vogal"
}else{
    letterType = "Consoante"
}
print(letterType)


//Switch
switch letter {
    case "a", "e", "i", "o", "u":
        letterType = "Vogal"
    default:
        letterType = "Consoante"
}

let speed = 95.0
switch speed {
    case 0.0..<20:
        print("Primeira marcha")
    case 20..<40:
        print("Segunda marcha")
    case 40..<50:
        print("Terceira marcha")
    case 50..<90:
        print("Quarta marcha")
    default:
        print("Quinta marcha")
}


//RANGE: Closed Range e Half-Closed Range
//... (Closed Range)
//..< (Half-Closed Range)
let range0_10 = 0...10
let range0_9 = 0..<10


let firstLetter = "v"

switch firstLetter {
    case "a"..."f":
        print("Você esta no primeiro trimestre")
    case "g"..."l":
        print("Você esta no segundo trimestre")
    case "m"..."r":
        print("Você esta no terceiro trimestre")
    default:
        print("Você esta no quarto trimestre")
}
