//
//  personalViewController.swift
//  MyMagic8Ball
//
//  Created by Christian on 3/11/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit

class personalViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var personalLabel: UILabel!
    @IBOutlet weak var entryText: UITextField!
    var entries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //entryText.delegate = self as! UITextFieldDelegate
        entryText.delegate = self
        
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ entryText: UITextField) -> Bool{
        entryText.resignFirstResponder()
        saveToArray()
        print(entries)
        entryText.text?.removeAll()
        return true
    }
    func saveToArray() {
        let SE = self.entryText.text
        self.entries.append(SE!)
    }
    
    @IBAction func homebutton(_ sender: Any) {
        entries.removeAll()
        self.dismiss(animated: true, completion: nil)
    }
    // Display random gen
    @IBAction func nextToDisplay(_ sender: Any) {
        self.performSegue(withIdentifier: "revealSegue", sender: self)
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        let randomPersonal = entries.randomElement()
        personalLabel.text = randomPersonal
    }
    
    
    

    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
