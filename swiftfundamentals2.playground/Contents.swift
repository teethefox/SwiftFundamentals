//: Playground - noun: a place where people can play

import UIKit


for i in 1...255 {
    print(i)
}

func idk(){
    for i in 1...100{
        if i % 3 == 0 && i % 5 == 0{
            continue
        }else if i % 5 == 0 || i % 3 == 0{
            print (i)
            
        }
        else{
            continue
        }
    }
}
func idkpt2(){
    for i in 1...100{
        if i % 3 == 0 && i % 5 == 0{
            print("FizzBuzz")
        } else if i % 3 == 0{
            print ("Buzz")
        } else if i % 5 == 0{
            print ("Fizz")
        }
    }
}

