import Foundation

class Animal{
    var name:String
    
    init(n :String) {
        name=n
    }
}


class Human:Animal{
    func code(){
        print("Typing away...")
    }
}

class Fish:Animal{
    func breatheUnderWater(){
        print("Breathing under water ")
    }
}


let angela=Human(n:"Angela Yu")
let jack = Human(n:"Jack Bauer")
let nemo=Fish  (n: "Nemo")
let num :NSNumber = 12
let word:NSString = "abc"

let neigbours:[Any] = [num,word,nemo]
