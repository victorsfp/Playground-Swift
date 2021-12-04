//ENCAPSULAMENTO

class CreditCard {
    let number: String
    let limit: Double
    private var invoiceValue: Double = 0
    var invoice: Double {
        return invoiceValue
    }
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
    
    final func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational ? value * (1 + iof/100) : value
        let finalValue = self.invoiceValue + debit
        if finalValue > limit {
            return false
        }else {
            invoiceValue = finalValue
            return true
        }
    }
    
    func getInvoice() -> Double {
        return self.invoiceValue
    }
}

let creditCard = CreditCard(number: "1245-9876-2883-1832", limit: 5000)
creditCard.makePurchase(off: 1500, isInternational: true)
print(creditCard.getInvoice())


class DebitCreditCard: CreditCard {
    private var _balance: Double = 0
    var balance: Double {
        return _balance
    }
    
    func makeTransaction(off value: Double) {
        self._balance += value
    }

}

let debitCard = DebitCreditCard(number: "2112-1231-3124-5678-7222", limit: 5000)
debitCard.makeTransaction(off: 500)
debitCard.makeTransaction(off: -100)
print(debitCard.balance)
