//
//  main.swift
//  ClassesDemo
//
//  Created by Enhui Zhang on 23/2/21.
//

import Foundation

let skeleton=Enemy()

let dragon=Dragon()
dragon.wingSpan=5
dragon.attackStrength=15
dragon.talk(speach: "My teeth are swords! My claws are spears! My wings are a hurricane")
dragon.move()
dragon.attack()

