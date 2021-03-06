//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Enhui Zhang on 26/2/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text=result
        settingLabel.text="Split between \(split) people, with \(tip)% tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
