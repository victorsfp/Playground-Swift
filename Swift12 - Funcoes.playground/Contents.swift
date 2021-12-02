//Funções


//BASICA
//func nome(parametro: Tipo) -> TipoDeRetorno{
//    Códigos e comandos
//
//    return TipoDeRetorno
//}


func sayHello(){
    print("Hello")
}
sayHello()

func say(message: String, to: String) -> String{
    return message + " " + to
}
let setence = say(message: "Bom dia!", to: "Maria")
print(setence)

func sum(_ a: Int, b: Int) -> Int {
    return a + b
}

print(sum(10, b: 20))


func multiply(_ number1: Int, by number2: Int) -> Int {
    return number1 + number2
}

print(multiply(20, by: 10))

func sum(_ initialValue: Int, withValues values: Int...) -> Int {
    var result = initialValue
    for value in values{
        result += value
    }
    
    return result
}

print(sum(10, withValues: 20,30,40,50,60))


import Foundation
let studentData = "Victor dos Santos Feitosa:24"

func getStudentInfo(_ data: String) -> (name: String, age: Int) {
    let info = data.components(separatedBy: ":")
    let studentName = info[0]
    let studentAge = Int(info[1])
    return (studentName, studentAge!)
}

let student = getStudentInfo(studentData)
print(student.name)
print(student.age)
