//
//  SettingsViewController.swift
//  HW6_State_Jorge
//
//  Created by Jorge Guerra on 6/21/17.
//  Copyright © 2017 Jorge Guerra. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var nameSwitch: UISwitch!
    @IBOutlet weak var flagSwitch: UISwitch!
    @IBOutlet weak var infoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func checkSwitches(_ sender: UISwitch) {
        if nameSwitch.isOn && flagSwitch.isOn && infoSwitch.isOn {
            if sender.tag == 101 || sender.tag == 103 {
                flagSwitch.isOn = false
            } else {
                nameSwitch.isOn = false
            }
        }
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thatCardVC = segue.destination as! CardViewController
        thatCardVC.hideSettings = (nameSwitch.isOn, flagSwitch.isOn, infoSwitch.isOn)
    }
}
