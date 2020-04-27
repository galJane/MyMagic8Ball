//
//  tranditionViewController.swift
//  MyMagic8Ball
//
//  Created by Christian on 3/4/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit
import Canvas
import AVFoundation
class tranditionViewController: UIViewController {
    @IBOutlet weak var magicBall: UIImageView!
    
    var audioPlayer: AVAudioPlayer!
    
    @IBOutlet weak var animationView: CSAnimationView!
    
    var entries = [String]()
    
    var reponses = ["It is certain","It is decidely so","Without a doubt","Yes - definitely","You may rely on it","As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy, try again","Ask again later","Better not tell you now","Cannot predict now","Concentrate and ask again","Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"]
    
    var randomReponses = [String]()
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // If statement to output text entries options user choosen
        if (entries.isEmpty) {
            // Tranditional Choice
            randomReponses = reponses
        } else {
            // Personal Choice
            randomReponses = entries
        // Only got sound to work with Personal fortunes so far. 
            let sound = Bundle.main.path(forResource: "sms-alert-5-daniel_simon", ofType: "mp3")
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            }
            catch {
                print(error)
            }
    }
    }
    // Shake will start animation and change text
        override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            audioPlayer?.play()
            magicBall.shake(duration:1.0)
        animationView.startCanvasAnimation()
           let outputWords = randomReponses.randomElement()
        outputLabel.text = outputWords
        }
    // home button to start menu
    @IBAction func homebuttonT(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    }
// Shake function Credit to https://gist.github.com/mourad-brahim/cf0bfe9bec5f33a6ea66
extension UIView {
    func shake(duration: CFTimeInterval) {
        let shakeValues = [-5, 5, -5, 5, -3, 3, -2, 2, 0]

        let translation = CAKeyframeAnimation(keyPath: "transform.translation.x");
        translation.timingFunction = CAMediaTimingFunction(name: .linear)
        translation.values = shakeValues
        
        let rotation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        rotation.values = shakeValues.map { (Int(Double.pi) * $0) / 180 }
        
        let shakeGroup = CAAnimationGroup()
        shakeGroup.animations = [translation, rotation]
        shakeGroup.duration = 1.0
        layer.add(shakeGroup, forKey: "shakeIt")
    }
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


