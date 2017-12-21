//
//  ViewController.swift
//  app-swoosh
//
//  Created by Octavian on 21/12/2017.
//  Copyright © 2017 Octavian. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    
    // PRO TIPS
    //D.R.Y principle
    //Whenever you need to work with data put it in a Struct or Class, never pass around multiple variables between view controllers
    //OPTIONALS
    //var myData: String! -- Implicitly unwrapped optional; use when you can guarantee variable will have data in it before used
    //var myData: String? -- Optional; use when there may or may not be data in the variable at runtime
}

