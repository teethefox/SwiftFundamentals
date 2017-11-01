//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var name: String
    var health: Int = 100
    init(name:String){
        self.name = name
    }
    func displayHealth(){
        print (self.health)
    }
}
class Cat: Animal{
    
    override init(name:String){
        super.init(name:name)
        self.health = 150
    }
    func growl(){
        print ("Rawr!")
    }
    func run(){
        print ("Running")
        self.health -= 10
    }
}
    class Lion: Cat{
        override init(name:String){
            super.init(name:name)
            self.health = 200
        }
        override func growl(){
            print("ROAR!!!! I am the King of the Jungle")
        }
    }
class Cheetah: Cat{
    override init(name:String){
        super.init(name:name)
    }
    override func run(){
        if self.health < 50 {
            print ("Insufficient health")
        }else {
        print ("Running fast")
        self.health -= 50
    }
    }
    func sleep(){
        if self.health <= 150{
            self.health += 50
        }
}
}
var cheetah = Cheetah(name: "ME")
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.displayHealth()
var lion = Lion(name:"ALSO ME")
lion.run()
lion.run()
lion.run()
lion.growl()


