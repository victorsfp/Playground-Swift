import UIKit

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De volta para o futuro"
]

var movies2 = Set<String>()

movies.insert("Homem Arannha: De volta par o Lar")
print(movies.count)

movies.insert("Homem Arannha: De volta par o Lar")
print(movies.count)


let result = movies.insert("Homem Arannha: De volta par o Lar")
print(result.inserted, result.memberAfterInsert)


movies.remove("Homem Arannha: De volta par o Lar")
print(movies)

for movie in movies {
    print(movie)
}

if movies.contains("Matrix") {
    print("Matrix esta na minha lista de filmes favoritos")
}


var myWifeMovies: Set<String> = [
    "De Repente 30",
    "Mensagem para você",
    "Sintonia de Amor",
    "De Volta para o Futuro",
    "Jurassic Park"
]

let favoriteMovies = movies.intersection(myWifeMovies) //valida valores que estao nos 2 sets
print(favoriteMovies)


let allMovies = movies.union(myWifeMovies) // todos os filmes
print(allMovies)


movies = movies.subtracting(myWifeMovies) //remove valores em um set que esteja em outro
print(movies)


//TUPLAS
//let address = "Av. Paulista, 1578, São Paulo - SP, 01310-200"

let address: (type: String, name: String, number: Int, city: String, state: String, zipCode: String) = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200")

print(address.number)


let (type, name, _, _, state, cep) = address
print(type)
print(name)
