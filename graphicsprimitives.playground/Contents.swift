//: Playground - noun: a place where people can play

import UIKit

struct Point{
   var X: Double
    var Y: Double
    init(X: Double, Y: Double) {
        self.X = X
        self.Y = Y
    }
    }
struct Line : Point{
    var Start = Point.self
    var End: Point
    func length(){
        return Start
    }
}
