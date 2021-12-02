import UIKit

var greeting = "Hello, playground"

var rg: Int = 1312312
var driverLicense: Int? //? -> Optional
driverLicense = 5345345344


//UnWrap -> Desembrulhar
//Ex. => driverLicense!
//print("A minha carteira de motorista é:", driverLicense!)

//Optional binding
if let driverL = driverLicense {
    print("A minha carteira de motorista é:",driverL)
}else{
    print("Não possuo carteira de motorista")
}

//let addresNumber = Int("100A")
let addresNumber = Int("100")
if let addresNumber = addresNumber {
    print(addresNumber)
}


//Nill caoliscing operator (Operador de coalescência nula)
let number: String = "540"
let addressNumber2 = Int(number) ?? 0
print(addressNumber2)


//Impliscit Unwrapped Optionals
var name: String!
name = "Joazinho"
if name != nil {
    print(name)
}
