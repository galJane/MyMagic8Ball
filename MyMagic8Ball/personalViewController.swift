//
//  personalViewController.swift
//  MyMagic8Ball
//
//  Created by Christian on 3/11/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit

class personalViewController: UIViewController,UITextFieldDelegate {

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
    
    
    @IBAction func home(_ sender: Any) {
        entries.removeAll()
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "revealSegue"
        {
            //let per = segue.destination as! UINavigationController
            let rev = segue.destination as! tranditionViewController
            rev.entries = entries
        }
    }
    // Display random gen
    @IBAction func nextToDisplay(_ sender: Any) {
        self.performSegue(withIdentifier: "revealSegue", sender: self)
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
