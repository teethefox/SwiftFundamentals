//: Playground - noun: a place where people can play

import UIKit

func shuffle()
{
    var arr: [Int] = [Int]()
    for i in 1...255{
        arr.append(i)
        
    }
    print (arr)
    let one: UInt32 = arc4random_uniform(255)
     let eh = Int(one)
    let two: UInt32 =  arc4random_uniform(255)
    let ah = Int(two)
//    print (arr[eh], arr[ah])
    var temp = arr[ah]
    arr[ah] = arr[eh]
    arr[eh] = temp
    print (arr)
}
shuffle()
func shuffle100(){

    var arr: [Int] = [Int]()
    for i in 1...255{
        arr.append(i)
        
    }
    for y in 1...100{
    let one: UInt32 = arc4random_uniform(255)
    let eh = Int(one)
    let two: UInt32 =  arc4random_uniform(255)
    let ah = Int(two)
//    print (arr[eh], arr[ah])
    let temp = arr[ah]
    arr[ah] = arr[eh]
    arr[eh] = temp
    }
//    print (arr)
    for (index, element) in arr.enumerated() {
        if element == 42{
            arr.remove(at: index)
            print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(index)")
        }
    }
    }

shuffle100()
