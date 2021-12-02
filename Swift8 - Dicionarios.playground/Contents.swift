import UIKit

var states = [
    "AC" : "Acre",
    "AL" : "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo"
]


var student: [String: Double] = [:]

//ADICIONAR ITEM AO DICIONARIO
//states["GO"] = "Goiaz"
states["GO"] = "Goiás" //MODIFICA


let oldGO = states.updateValue("Goiás", forKey: "GO")
print(oldGO)


let myState = states["AL"]

if let state = myState {
    print(state)
}

//REMOVE
states["GO"] = nil
//let oldGoRemove = states.removeValue(forKey: "GO")

print(states)
print(states.count)


//LISTA DE CHAVES
let keys = Array(states.keys)
print(keys)

let values = Array(states.values)
print(values)
