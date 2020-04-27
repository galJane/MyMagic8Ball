//
//  tranditionViewController.swift
//  MyMagic8Ball
//
//  Created by Christian on 3/4/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit
import Canvas

class tranditionViewController: UIViewController {
    
    @IBOutlet weak var animationView: CSAnimationView!
    var entries = [String]()
    var reponses = ["It is certain","It is decidely so","Without a doubt","Yes - definitely","You may rely on it","As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy, try again","Ask again later","Better not tell you now","Cannot predict now","Concentrate and ask again","Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"]
    var randomReponses = [String]()
    //var randomReponses: String = ""
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (entries.isEmpty) {
            randomReponses = reponses
        } else {
            randomReponses = entries
        // Do any additional setup after loading the view.
    }
    }
        override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        animationView.startCanvasAnimation()
           let outputWords = randomReponses.randomElement()
        outputLabel.text = outputWords
        }
    
    @IBAction func homebuttonT(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
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


