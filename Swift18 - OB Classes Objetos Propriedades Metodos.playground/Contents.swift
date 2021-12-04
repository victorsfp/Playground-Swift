//CLASES

class Person {
    var name: String
    var gender: Character
    var age: Int = 0
    
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    
    func speak(sentence: String) {
        if age < 3{
            print("gugu dada")
        }else{
            print(sentence)
        }
    }
    
    func introduce() {
        speak(sentence: "Olá, meu nome é \(self.name)")
    }
}

class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}


//INSTANCIANDO
let joao = Person(name: "João", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fábio", gender: "M")

joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()

class Vehicle {
    var speed: Double = 0 {
        didSet {
            speed = min(speed, maxSpeed)
        }
    }
    var model: String
    
    static let speedUnit = "Km/h"
    
    var maxSpeed: Double {
        return 250
    }
    
    var speedInMilesPerHours: Double {
        get {
            return speed / 1.60934
        }
        
        set {
            speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    //METODOS DE INSTANCIAS
    func descript() -> String {
        return "Veículo \(self.model), velocidade atual: \(self.descript())"
    }
    
    //METODO DE CLASSE
    class func alert() -> String {
        return "Se beber, não dirija!!"
    }
}

print(Vehicle.alert())
print(Vehicle.speedUnit)

let car = Vehicle(model: "City")
car.speed = 500
print(car.speed)
