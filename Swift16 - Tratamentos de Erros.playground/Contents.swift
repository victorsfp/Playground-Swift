//Tratamento de Erros

enum LoginError: Error {
    case wrogLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection(){
        if userName != "victor" {
            throw LoginError.wrogLogin
        }
        
        if password != "123456"{
            throw LoginError.wrongPassword
        }
        
        return true
    }else{
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool{
    return true
}

//do {
//    let loginResult = try login(userName: "victor", password: "123456")
//    print(loginResult)
//} catch {
//    print(error)
//}

do {
    let loginResult = try login(userName: "victor", password: "123456")
    print(loginResult)
} catch LoginError.wrogLogin{
    print("Nome do usuário inválido!")
} catch LoginError.wrongPassword {
    print("Senha ínvalida")
} catch LoginError.noInternetConnection {
    print("Sem conexão!")
}


//CASO TENHA CERTEZA QUE NAO DE ERRADO, MAS QUERO QUE RETORNE NULL QUANDO DE ALGUM ERRO
let loginResult2 = try? login(userName: "victor", password: "123456")
print(loginResult2)

//CASO TENHA CERTEZA QUE NADA DE ERRADO
let loginResult3 = try! login(userName: "victor", password: "123456")
print(loginResult3)
