//: Playground - noun: a place where people can play
//Blue cards should have a roll value of either 1 or 2
//Red cards should have a roll value of either 3 or 4
//Green cards should have a roll value between 4 and 6

import UIKit

struct Cards{
    var Color : String
    var Roll : Int
        
    }
class Deck{
   var cards : [Cards] = []
    init()
    {
    for i in 0..<3
    {
    for _ in 0..<10
    {
    if(i==0)
    {
    let card = Cards(Color:"Blue",Roll:Int(arc4random_uniform(2))+1)
    self.cards.append(card)
    }
    else if(i==1)
    {
    let card = Cards(Color:"Red",Roll:Int(arc4random_uniform(2))+3)
    self.cards.append(card)
    }
    else
    {
    let card = Cards(Color:"Green",Roll:Int(arc4random_uniform(3))+4)
    self.cards.append(card)
    }
    }
        }
        self.shuffle()
    }
    
    func deal()->Cards
    {
        return self.cards.removeFirst()
    }
    func is_empty()->Bool
    {
        if(self.cards.count == 0)
        {
            return true
        }
        else
        {
            return false
        }
    }
    func shuffle()->Deck
    {
        for i in 0..<30
        {
            let idx = Int(arc4random_uniform(30))
            let temp = self.cards[i]
            self.cards[i] = self.cards[idx]
            self.cards[idx] = temp
        }
        return self
    }
}

class Player{
    var hand : [Cards] = []
    var name : String
    init(name:String)
    {
        self.name = name
    }
    func draw(deck: inout Deck) -> Player{
        let card = deck.deal()
        self.hand.append(card)
        return self
    
    }
    func roll()->Int
    {
        return Int(arc4random_uniform(6))+1
    }
    func match(Color: String, Roll: Int)->Int{
        var count = 0
        for i in 0..<self.hand.count{
            if(self.hand[i].Color==Color && self.hand[i].Roll==Roll)
            {
                count+=1
            }
        }
        return count
    
    }
}

//var deck = Deck()
//print(deck.cards.count)
//var player1 = Player(name:"TMoney")
//print(player1.hand)
//player1.draw(deck:&deck)
//print(player1.hand)
//player1.draw(deck:&deck)
//print(player1.hand)
//print(deck.cards.count)
//print(player1.match(Color:"Red",Roll:4))
//print(deck.is_empty())



