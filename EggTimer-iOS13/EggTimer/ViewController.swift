//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTime:[String:Int]=["Soft":3 ,"Medium":5,"Hard":7]
    var timer = Timer()

    var secondPassed = 0
    var totalTime = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness=sender.currentTitle!
        totalTime=eggTime[hardness]!

        progressBar.progress=0.0
        secondPassed = 0
        
        titleLabel.text=hardness

        
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    @objc func updateTimer() {
        if(secondPassed < totalTime) {
            let precentageProgress=Float(secondPassed)/Float(totalTime)
            
            progressBar.progress=precentageProgress
            secondPassed+=1
        }
        else{
            timer.invalidate()
            titleLabel.text="DONE!"
            progressBar.progress=1.0
            playSound(soundName: "alarm_sound")
        }

    }
    
    func playSound(soundName:String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}
