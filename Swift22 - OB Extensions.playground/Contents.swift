//Extensoes
import Foundation

let name: String = "Victor dos Santos Feitosa"


extension String {
    var vowels: [Character] {
        var list: [Character] = []
        
        for character in self.trimmingCharacters(in: .whitespaces)  {
            switch String(character).lowercased() {
                case "a", "e", "i", "o", "u":
                    list.append(character)
                default:
                    break
            }
        }
        
        return list
    }
    
    
    func initials() -> String {
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
}

name.vowels
name.initials()

class Account {
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
}

extension Account {
    convenience init(number: String, balance: Double) {
        self.init(number: number)
        self.balance = balance
    }
}

let account = Account(number: "12312312", balance: 2333.22)
account.balance
