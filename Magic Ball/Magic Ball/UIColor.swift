//
//  UIColor.swift
//  predictions_app
//
//  Created by Andrey Nenoglyadov on 12/24/19.
//  Copyright © 2019 Andrey Nenoglyadov. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
