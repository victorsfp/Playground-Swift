import UIKit

var greeting = "Hello, playground"

//INT, FLOAT, DOUBLE, CHARACTER, STRING, BOOL

//Booleanos (Bool) - 1 byte
var isFisrtTime: Bool = true
var likesFruits = true

//Inteiros (Int) -> Signed
//var age: Int = 25
var newAge = 43
var temperature = -12

//UInt -> Unsigned Int
var age: UInt = 24

//Float -> 32Bit
var dolar: Float = 3.5

//Double -> 64Bit
var crazyNumber: Double = 1000000.123123

//Character
var gender: Character = "M" //F
var enter: Character = "\n"
var aspas: Character = "\""


//String -> Conjunto de caracteres
var newGender = "M"
let studentName = "\"Dr. Victor Feitosa\""
let firstName = "Victor"
let lastName = "Feitosa"
//let fullName = firstName + " " + lastName
let fullName = "\(firstName) \(lastName) - Idade: \(age) anos"
print(fullName)

let text = """
    Olá, espero que esteja gostando do curso.
    Ainda tem muito mais pela frente
"""

print(text)
