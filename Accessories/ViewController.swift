//
//  ViewController.swift
//  Accessories
//
//  Created by Artem Pavlov on 30.11.16.
//  Copyright © 2016 Arty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wiredPackSwitch: UISwitch!
    @IBOutlet weak var electricBlueColorSwitch: UISwitch!
    @IBOutlet weak var vanitySpokeDCWheelsSwitch: UISwitch!
    @IBOutlet weak var blackNWitheLinesSwitch: UISwitch!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIElements()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUIElements() {
        calculateButton.layer.cornerRadius = 12
        calculateButton.layer.borderWidth = 2
        calculateButton.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Special Offer!", message: "Only today You will have an opportunity to purchase this car at a special price ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yep, call me back!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}

