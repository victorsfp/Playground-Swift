//Operadores Personalizados

//Unários -> Operam somente em 1 operando
//prefix - esquerdo do operando
//postfix - direito do operando

//Binários -> Operam em 2 operandos
//infex - no meio do operando


//PREFIX
prefix operator <|
prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    
    return result
}

let ages = [9,25,30,42,7,18]
let lastYearAges = <|ages
print(lastYearAges)


//POSTFIX
postfix operator ‼
postfix func ‼ (lhs: Int) -> Int {
    var result = 1
    if lhs < 2 {
        return result
    }
    
    for i in 2...lhs {
        result *= i
    }
    
    return result
}

print("Fatorial de 3:", 3‼)
print("Fatorial de 4:", 4‼)
print("Fatorial de 5:", 5‼)

infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array(rhs...lhs).reversed()
}

print(30---12)

import Foundation

infix operator >-<
func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe)) + 1)
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    return result.sorted()
}



//6>-<60

print("Foi gerado 6 número do intervalo de 0-60", 6>-<60)
print("Foi gerado 5 número do intervalo de 0-80", 5>-<80)
//print("Foi gerado 15 número do intervalo de 0-25", 15>-<25)
