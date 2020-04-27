//
//  openingViewController.swift
//  MyMagic8Ball
//
//  Created by Socstudent on 2/25/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit
/* USER MANUAL
  On the opening screen it will show two options, Personal and Traditional Fortunes:
  Personal options will let you add your own text entry to add to the magic-8 ball. Press enter after each text entry to submit it. Repeat until you put in all your text entries, then submit. The next screen will ask you to shake your phone to reveal a fortune. Press the home button to go back to the start menu.
  Traditional options will take you to take straight to the magic 8 ball screen for you can shake your phone to reveal one of the original magic 8 ball fortunes. Press the home button to go back to the start menu.
 
*/

class openingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func PersonalButton(_ sender: Any) {
        self.performSegue(withIdentifier: "personalOption", sender: self)
    }
    
    @IBAction func traditionalButton(_ sender: Any) {
        self.performSegue(withIdentifier: "tranditionSegue", sender: self)
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
