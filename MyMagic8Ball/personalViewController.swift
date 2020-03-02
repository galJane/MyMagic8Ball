//
//  personalViewController.swift
//  MyMagic8Ball
//
//  Created by Christian on 2/28/20.
//  Copyright © 2020 Jane Perez. All rights reserved.
//

import UIKit

class personalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var entries: Int = 1
    var pf = [String]()
    var numChose = [String]()
    
    @IBOutlet weak var entryText: UITextField?
    @IBOutlet weak var numPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.numPicker.dataSource = self
        self.numPicker.delegate = self
        numChose = ["1","2","3","4","5","6","7","8","9","10"]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func next(_ sender: Any) {
        self.performSegue(withIdentifier: "enterText", sender: self)
        for i in 0..<entries {
            pf.append(entryText.text)
        }
        print(pf)
    }
    
    @IBAction func inputHome(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numChose.count
    }
    // data to put in picker
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numChose[row]
    }
    // capture the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        entries = Int(numChose[row])!
    }
    // Clear text field
    func textFieldShouldClear(_ entryText: UITextField) -> Bool{
        return entryText.text == nil
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
