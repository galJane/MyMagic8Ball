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
    
        entryText.delegate = self
        
    
    }
    //Gather each text submission then use saveToArray function
    func textFieldShouldReturn(_ entryText: UITextField) -> Bool{
        entryText.resignFirstResponder()
        saveToArray()
        print(entries)
        entryText.text?.removeAll()
        return true
    }
    //Function to Save text submission to an arry
    func saveToArray() {
        let SE = self.entryText.text
        self.entries.append(SE!)
    }
    
    //Back to main menu
    @IBAction func home(_ sender: Any) {
        entries.removeAll()
        self.dismiss(animated: true, completion: nil)
    }
    // Prepares personal entries array to transfer over to tranditional view controller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "revealSegue"
        {
            //let per = segue.destination as! UINavigationController
            let rev = segue.destination as! tranditionViewController
            rev.entries = entries
        }
    }
    // Transfer to tranditional view crontroller
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
