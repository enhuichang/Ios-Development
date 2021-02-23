//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Enhui Zhang on 23/2/21.
//

import Foundation

class Enemy{
    var health = 100
    var attackStrength=10
    
    func move(){
        print("Walk forwards")
    }
    
    func attack(){
        print("Land a hit, does \(attackStrength) damage")
    }
}
