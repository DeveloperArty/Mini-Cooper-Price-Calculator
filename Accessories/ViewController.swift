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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
        
        okButton.backgroundColor = UIColor.cyan
        okButton.layer.cornerRadius = 8
        okButton.setTitleColor(UIColor.black, for: .normal)
    }
    
    //MARK: - UI Events
    @IBOutlet weak var basicPriceLabel: UILabel!
    @IBOutlet weak var additionsPriceLabel: UILabel!
    @IBOutlet weak var additionsDiscountedPriceLabel: UILabel!
    @IBOutlet weak var finalPriceLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    let calculates = Calculates()
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let finalCarPrice = calculates.calculatePrice(wiredSwitchStatus: wiredPackSwitch.isOn, colorSwitchStatus: electricBlueColorSwitch.isOn, wheelsSwitchStatus: vanitySpokeDCWheelsSwitch.isOn
            , linesSwitchStatus: blackNWitheLinesSwitch.isOn)
        let additionalsPrice = Double(finalCarPrice - calculates.basicCarPrice)
        let additionalsDiscountedPrice = Int(additionalsPrice * calculates.discount)
        
        basicPriceLabel.text = "Цена в базовой комплектации: \(calculates.basicCarPrice)₽"
        additionsPriceLabel.text = "Дополнительное оборудование: \(Int(additionalsPrice))₽"
        additionsDiscountedPriceLabel.text = "Ваша скидка на доп. оборудование : \(Int(100-calculates.discount*100))%"
        finalPriceLabel.text = "Итоговая цена: \(calculates.basicCarPrice + additionalsDiscountedPrice)₽"

        calculatesView.isHidden = false
        
    }
    
    @IBAction func okButtonPressed(_ sender: UIButton) {
        calculatesView.isHidden = true 
    }
    
    
    
}

