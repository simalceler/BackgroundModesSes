//
//  ViewController.swift
//  Background Modes Ses
//
//  Created by Şimal Çeler on 5.04.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var sesOynatici:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        }catch{
            print(error.localizedDescription)
        }
    }

    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
    }
    
    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop()
    }
}

