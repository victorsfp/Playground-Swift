//Closures
func sum(_ a:Int, _ b: Int) -> Int {
    return a+b
}

func subtract(_ a:Int, _ b: Int) -> Int {
    return a-b
    
}

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

calculate(10, 20, operation: sum)

// Closure \/ = Funcao anonima
calculate(10, 20, operation: {(a: Int, b: Int) -> Int in
    return a * b
})

//DEVIDO TIPO -> SIMPLIFICANNDO ABAIXO
calculate(10, 20, operation: {(a, b) -> Int in
    return a / b
})

calculate(10, 20, operation: {a, b in
    return a / b
})

calculate(10, 20, operation: {
    return $0 * $1
})

calculate(10, 20, operation: {$0 * $1 })

calculate(10, 20, operation: *)

calculate(10, 20) {$0 * $1 }

import Foundation

var names = [
    "   Alessandra",
    "   Jéssica",
    "Anderson    ",
    "   Demys  ",
    "Harley    "
]

//MAP
let correctedNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctedNames)

let uppercasedNames = correctedNames.map({$0.uppercased()})
print(uppercasedNames)

let feitosas = correctedNames.map({$0 + " Feitosa"})
print(feitosas)

//FILTER
let newNames = correctedNames.filter({ $0.count < 7 })
print(newNames)

//REDUCE
//$0 é o valor inicial do reduce
//$1 é o item do array
let sumLetter = correctedNames.reduce(0, {$0 + $1.count})
print(sumLetter)
