 //
//  BorderButton.swift
//  app-swoosh
//
//  Created by Octavian on 21/12/2017.
//  Copyright © 2017 Octavian. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    //called the moment your interface builder VC comes to life onto the screen
    override func awakeFromNib() {
        super.awakeFromNib() //calling UIButton awakeFromNib function
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
