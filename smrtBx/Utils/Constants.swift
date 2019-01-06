//
//  Constants.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit

class Constants {
    
    let jsonUrl = "http://smartbox.software/tt/TT.json"
    
    let reddishOrange = #colorLiteral(red: 0.9529411765, green: 0.3490196078, blue: 0.05882352941, alpha: 1)
    let softBlue = #colorLiteral(red: 0.4039215686, green: 0.4470588235, blue: 0.8980392157, alpha: 1)
    let tomato = #colorLiteral(red: 0.9529411765, green: 0.3529411765, blue: 0.1411764706, alpha: 1)
    
}

enum SmrtBxTypes: String {
    case events = "event"
    case shops = "shop"
}
