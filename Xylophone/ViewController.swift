//
// ViewController.swift
// Xylophone
// developer.apple.com/documentation
// pink day-to-day programming | purple apple functions (refer to documentations consistely)
// remember option + highlighting purple brings up quick documentation for apple code

import UIKit
import AVFoundation //Audio Visual Foundation Module (Apple)

var player: AVAudioPlayer? //
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

}

