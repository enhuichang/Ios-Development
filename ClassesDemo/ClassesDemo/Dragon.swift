//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Enhui Zhang on 24/2/21.
//

import Foundation

class Dragon:Enemy{
    var wingSpan=2
    
    func talk(speach:String){
        print("Says:\(speach)")
    }
    
    override func move() {
        print("Fly forwards")
    }
    
    override func attack(){
        super.attack()
        print("Spits fire, does 10 damage")
    }
}
