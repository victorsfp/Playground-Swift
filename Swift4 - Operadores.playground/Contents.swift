import UIKit

var greeting = "Hello, playground"

//Operadores Binários

//Operador de Atribuição: =
let gravity = 9.81
var (name,age) = ("Victor", 24)
print(name)
print(name)

//Operadores Aritiméticos: Soma (+), Subtração (-), Multiplicação (*), Divisão (/), Módulo (%)
//Soma: +
var age1 = 45
var age2 = 26
let sum = age1 + age2

//Subtração
var minus = age1 - age2

//Multiplicação
let multiply = age1 * age2

let time1 = 12
let time2 = 14.75
//let resultTimes = time1 + time2 // ERRO pois time1 é Int e time2 é Double

//Divisão
let division = age1 / age2

//Módulo: Resto da divisão
let toys = 35
let kids = 6
let modulus = toys % kids


//Operadores Compostos: Atribui e opera ao mesmo tempo
//age1 = age1 + age2
age1 += age2
// -= , +=, /=, %=

var products = 125
var lastBuy = 22
products -= lastBuy

//Comparação: Comparacão entre valores (sempre retornam um Bool)
// Maior que: >
let grade1 = 7.5
let grade2 = 9.8
let betterThanFriend = grade1 > grade2

//Menor que: <
let grade = 8.9
let minimumGrade = 7.0
let reproved = grade < minimumGrade

//Maior ou igual a: >=
let aproved = grade >= minimumGrade
//Menor ou igual a: <=

//Igualdade: ==
let teacherName = "Victor"
let studentName = "victor"
//let sameNames = teacherName == studentName
let sameNames = teacherName.lowercased() == studentName.lowercased()

//Desiguildade !=
let differentNames = teacherName != studentName
