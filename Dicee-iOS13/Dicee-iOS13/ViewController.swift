//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBoutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    var images=[#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var leftDiceNumber=1
    var rightDiceNumber=5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //who what value
     
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image=images[leftDiceNumber]
        diceImageView2.image=images[rightDiceNumber]
        leftDiceNumber+=1
        rightDiceNumber-=1
 
    }

}

