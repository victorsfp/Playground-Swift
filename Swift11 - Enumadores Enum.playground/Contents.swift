//Enums
enum CompassPoint {
    case north
    case east
    case west
    case south
}

//var direction: CompassPoint = CompassPoint.north
//var direction = CompassPoint.north
var direction: CompassPoint = .north
print(direction)

direction = .south


enum SeatPosition: String {
    case aisle = "corredor", middle = "meio", window = "janela"
}

var passengerSeat = SeatPosition.window

switch passengerSeat {
    case .aisle:
        print("O passageiro esta sentado no corredo")
    case .middle:
        print("O passageiro esta sentado no meio")
    case .window:
        print("O passageiro esta sentado no janela")
}
print(passengerSeat.rawValue)

enum Month: Int {
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

print(Month.august.rawValue)

//Valores Associados (Associated Values)
enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height: 1.71)//.weight(82)//.age(39)

switch measure {
case .weight(let weight):
    print("O seu peso é: \(weight)")
case .age(let age):
    print("A sua idade é: \(age)")
case .size(let size):
    print("As suas medidas de tamanho são \(size.width) de largura e \(size.height)")
}
