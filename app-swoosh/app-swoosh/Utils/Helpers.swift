//
//  Helpers.swift
//  app-swoosh
//
//  Created by Octavian on 21/12/2017.
//  Copyright © 2017 Octavian. All rights reserved.
//

import UIKit

class Helpers {
    static func resetButtonColors(buttonArray: [BorderButton], color: UIColor) {
        for button in buttonArray {
            button.backgroundColor = color
        }
    }
    
    static func changeButtonColor(index: Int, buttonArray: [BorderButton], newColor: UIColor, oldColor: UIColor) {
        for i in 0..<buttonArray.count {
            if i == index {
                buttonArray[i].backgroundColor = newColor
            } else {
                buttonArray[i].backgroundColor = oldColor
            }
        }
    }
}
