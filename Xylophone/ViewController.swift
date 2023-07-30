//
//  ViewController.swift
//  Xylophone
//
//  Created by Эльдар Ахатов on 30/07/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    var player: AVAudioPlayer!
    
    
    @IBAction func pushedButton(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    

    func playSound(soundName: String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        
    }
    
    

}

