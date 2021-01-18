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
    
        //print(sender.currentTitle)
        //print(sender.backgroundColor)
        print(sender.titleLabel?.text)
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduce the opacity to half and bring it back
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Return is back to full colour with a .2 second delay
              sender.alpha = 1.0
          } 
        
        //Ignore iPhone silent mode and play
        do {
              try AVAudioSession.sharedInstance().setCategory(.playback)
           } catch(let error) {
               print(error.localizedDescription)
           }
    
    }
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource:soundName, withExtension: "wav") //Location of sound file
        player = try! AVAudioPlayer(contentsOf: url!) //Load up the player itself to play the file
        player.play() //play sound
    }
}

