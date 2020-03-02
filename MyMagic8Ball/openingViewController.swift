//
//  openingViewController.swift
//  MyMagic8Ball
//
//  Created by Socstudent on 2/25/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit

class openingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func PersonalButton(_ sender: Any) {
        self.performSegue(withIdentifier: "personalOption", sender: self)
    }
    
    @IBAction func traditionalButton(_ sender: Any) {
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
