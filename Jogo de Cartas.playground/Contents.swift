import UIKit

class Card {
    var rank: String
    var suit: String
    
    init(rank: String, suit: String) {
        self.rank = rank
        self.suit = suit
    }
    
    func description() -> String {
        return "\(rank) de \(suit)"
    }
}
class Deck {
    var cards = [Card]()
    
    init() {
        let suits = ["Copas", "Ouros", "Espadas", "Paus"]
        let ranks = ["Ás", "Dois", "Três", "Quatro", "Cinco", "Seis", "Sete", "Oito", "Nove", "Dez", "Valete", "Dama", "Rei"]
        
        for suit in suits {
            for rank in ranks {
                cards.append(Card(rank: rank, suit: suit))
            }
        }
    }
    
    func shuffle() {
        cards.shuffle()
    }
    
    func draw() -> Card? {
        return cards.popLast()
    }
}

let deck = Deck()
deck.shuffle()

for _ in 1...5 {
    if let card = deck.draw() {
        print(card.description())
    }
}
