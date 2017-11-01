//: Playground - noun: a place where people can play

import UIKit

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()
for i in suits{
    deckOfCards = ["\(suits[0])": cards, "\(suits[1])": cards , "\(suits[2])": cards , "\(suits[3])": cards]
    
}
print(deckOfCards)
