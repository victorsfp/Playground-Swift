//HERANCA

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound(){
        print("...")
    }
}

//HERDANDO DE ANIMAL
class Dog: Animal {
    
    override func emiteSound() {
        print("Au au au")
    }
    
    func run(){
        print("O cachorro esta correndo")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    //Designated Initializar
    init(color: String, gender: Character, breed: String, canFly: Bool){
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convenience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Piu piu piu")
    }
    
    func fly(){
        if canFly {
            print("O passaro esta voando")
        }else{
            print("Esse pássaro não voa")
        }
        
    }
}

class Duck: Bird {
    
    init(color: String, gender: Character, breed: String ) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
}


let billy = Dog(color: "Preto e Branco", gender: "M", breed: "Lhasa Apso")

let zeCarioca = Bird(color: "Verde e amaraelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")

let donald = Duck(color: "Branco", gender: "M", breed: "Disney")

//Para construtores de conveniencia
// - Designated Initializar deve chamar outro designated da sua classe mae
// - Um Convenience Initializer deve chamar outro initializer da mesma da classe
// - Um Convenience Initializer deve chamar, no final, um designated initializer

billy.emiteSound()
zeCarioca.emiteSound()
donald.emiteSound()


print("===============================")
//TypeCasting
let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Preto", gender: "F", breed: "Cocker Spaniel"),
    Dog(color: "Preto", gender: "F", breed: "PitBull"),
    Duck(color: "Preto", gender: "F", breed: "Silvestre"),
    Bird(color: "Preto", gender: "F", breed: "Avestruz", canFly: false)
]


for animal in animals {
    animal.emiteSound()
//    //Force
//    if animal is Dog {
//        (animal as! Dog).run()
//    }
//    if animal is Duck {
//        (animal as! Duck).fly()
//    }
//
//    //Optional Binding
//    if let dog = animal as? Dog {
//        dog.run()
//    }
    
    //Switch with Optional Binding
    switch animal {
        case let dog as Dog:
            dog.run()
        case let bird as Bird:
            bird.fly()
        default:
            break
        
    }
}
