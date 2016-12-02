//
//  ViewController.swift
//  Accessories
//
//  Created by Artem Pavlov on 30.11.16.
//  Copyright © 2016 Arty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calculatesView: UIView!
    @IBOutlet weak var wiredPackSwitch: UISwitch!
    @IBOutlet weak var electricBlueColorSwitch: UISwitch!
    @IBOutlet weak var vanitySpokeDCWheelsSwitch: UISwitch!
    @IBOutlet weak var blackNWitheLinesSwitch: UISwitch!
    @IBOutlet weak var calculateButton: UIButton!
    
    //MARK: - Standart functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIElements()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Additional UI Setup
    
    func setupUIElements() {
        
        calculatesView.isHidden = true
        calculatesView.layer.cornerRadius = 5
        calculatesView.layer.borderColor = UIColor.cyan.cgColor
        calculatesView.layer.borderWidth = 2
        
        calculateButton.layer.cornerRadius = 12
        calculateButton.layer.borderWidth = 2
        calculateButton.layer.borderColor = UIColor.lightGray.cgColor
        
        wiredPackSwitch.isOn = false
        electricBlueColorSwitch.isOn = false
        vanitySpokeDCWheelsSwitch.isOn = false
        blackNWitheLinesSwitch.isOn = false
    }
    
    //MARK: - UI Events
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculatesView.isHidden = false
        
    }
    
    
}

