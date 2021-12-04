import UIKit

var greeting = "Hello, playground"

//Operdores Lógicos

//Operador E ou And (&&)
var boughtBanana: Bool = true
var bouchTomato: Bool = true
var boughtApple = false

var isHappy  = boughtBanana && bouchTomato && boughtApple

true && true
true && false
false && false
false && true

//Operador OU (OR): ||
var likesMeat = false
var likesBeer = true
var canInBarbecue = likesBeer || likesMeat

true || true
true || false
false || true
false || false

var grade1 = 8.5
var grade2 = 7.0
let result = (grade1 + grade2) / 2

//Operador de negação (NOT): !
var knowSwift = false
var enrolSwiftCourse = !knowSwift

//Operador ternário
var grade = 7.95
var gradeResult = (grade >= 7) ? "Aprovado" : "Reprovado"

let number = 10
let type = (number % 2 == 0) ? "Par" : "Ímpar"
