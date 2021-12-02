//Estruturas

let age: Int = 20
let name: String = "Victor"

struct Person {
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name
    }
    
    func sayHello(){
        print("Olá")
    }
    
    mutating func incrementAge() {
        self.age += 1
    }
}

//var person = Person(name: "Victor Feitosa", age: 24)
//person.sayHello()


var newPerson = Person(name: "Victor Feitosa")
newPerson.incrementAge()
print(newPerson.age)

//Computed Properties (Propriedades computadas)
struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheit)
