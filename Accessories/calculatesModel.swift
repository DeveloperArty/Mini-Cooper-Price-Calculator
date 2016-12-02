//
//  calculatesModel.swift
//  Accessories
//
//  Created by Artem Pavlov on 30.11.16.
//  Copyright © 2016 Arty. All rights reserved.
//


struct Calculates {
    
    let basicCarPrice: Int = 1499000
    let wiredPackPrice: Int = 155000
    let electricBlueColorPrice: Int = 30000
    let vanitySpokeWheelsPrice: Int = 96500
    let linesPrice: Int = 7800
    
    func calculatePrice(wiredSwitchStatus: Bool, colorSwitchStatus: Bool, wheelsSwitchStatus: Bool, linesSwitchStatus: Bool) -> Int {
        var finalPrice = basicCarPrice
        if wiredSwitchStatus == true {
            finalPrice += wiredPackPrice
        }
        if colorSwitchStatus == true {
                finalPrice += electricBlueColorPrice
            }
        if wheelsSwitchStatus == true {
            finalPrice += vanitySpokeWheelsPrice
        }
        if linesSwitchStatus == true {
            finalPrice += linesPrice
        }
        
        return finalPrice
    }
    
}
