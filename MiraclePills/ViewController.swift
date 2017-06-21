//
//  ViewController.swift
//  MiraclePills
//
//  Created by Jesus Gomez on 6/19/17.
//  Copyright © 2017 gomezja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var countryField: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    
    
    @IBOutlet weak var planetField: UILabel!
    @IBOutlet weak var planetInput: UITextField!
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alaska", "California", "Texas", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        
        countryField.isHidden = true
        countryInput.isHidden = true
        
        planetField.isHidden = true
        planetInput.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        
        countryInput.isHidden = false
        countryField.isHidden = false
        
        planetInput.isHidden = false
        planetField.isHidden = false
    }
}

