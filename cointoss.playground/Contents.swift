//: Playground - noun: a place where people can play

import UIKit

func coinToss()-> String{
    print("Tossing a coin...")
    var result : String
    let num = Int(arc4random_uniform(100))
    if num < 50 {
         result = "Heads"
    } else{
        result = "Tails"
    }
    print (result)
    return result
}

coinToss()
func tossMultipleCoins(num: Int) -> Double{
    var tails: Double = 0
    var heads: Double = 0
var double:Double
    for i in 0...(num){
        coinToss()
        if coinToss() == "Tails" {
            tails += 1
        } else {
            heads += 1
        }
    }
    if heads > tails {
         double = heads / tails
        print ("Heads", double)
 
    }
    else{
         double = tails / heads
        print ("Tails", double)
    }
    
    
    return double
}
tossMultipleCoins(num: 100)
