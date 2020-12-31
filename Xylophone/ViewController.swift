//
// ViewController.swift
// Xylophone
// developer.apple.com/documentation
// pink day-to-day programming | purple apple functions (refer to documentations consistely)
// remember option + highlighting purple brings up quick documentation for apple code

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav") //Location of sound file
        player = try! AVAudioPlayer(contentsOf: url!) //Load up the player itself to play the file
        player.play() //play sound
                
    }
}

