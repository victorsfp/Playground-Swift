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
    
    func fly(){
        if canFly {
            print("O passaro esta voando")
        }else{
            print("Esse pássaro não voa")
        }
        
    }
}


let billy = Dog(color: "Preto e Branco", gender: "M", breed: "Lhasa Apso")

let zeCarioca = Bird(color: "Verde e amaraelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")

//Para construtores de conveniencia
// - Designated Initializar deve chamar outro designated da sua classe mae
// - Um Convenience Initializer deve chamar outro initializer da mesma da classe
// - Um Convenience Initializer deve chamar, no final, um designated initializer

billy.emiteSound()
zeCarioca.emiteSound()
