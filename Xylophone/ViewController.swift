//
// ViewController.swift
// Xylophone
// developer.apple.com/documentation
// pink day-to-day programming | purple apple functions (refer to documentations consistely)
// remember option + highlighting purple = docs for apple code
// remember declare func | and then call func | logical reasoning

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {

        print(sender.currentTitle)
        
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav") //Location of sound file
        player = try! AVAudioPlayer(contentsOf: url!) //Load up the player itself to play the file
        player.play() //play sound
                
    }
}

