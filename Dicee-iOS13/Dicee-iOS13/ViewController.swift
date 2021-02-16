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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //who what value
     
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image=#imageLiteral(resourceName: "DiceSix")
        diceImageView2.image=#imageLiteral(resourceName: "DiceTwo")
        print("Button got tapped.")
    }

}

