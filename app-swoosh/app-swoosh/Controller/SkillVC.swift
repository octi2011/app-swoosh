//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Octavian on 21/12/2017.
//  Copyright © 2017 Octavian. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player! //implicitly unwrapped, we promised a player

    @IBOutlet weak var ballerBtn: BorderButton!
    @IBOutlet weak var beginnerBtn: BorderButton!
    @IBOutlet weak var finishBtn: BorderButton!
    
    var buttonArray = [BorderButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonArray = [self.beginnerBtn, self.ballerBtn]
        Helpers.resetButtonColors(buttonArray: buttonArray, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
        print(player.desiredLeague)
        player.selectedSkillLevel = ""
        finishBtn.isHidden = true
        finishBtn.isEnabled = false

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectSkill(skillType: "beginner")
        Helpers.changeButtonColor(index: 0, buttonArray: buttonArray, newColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), oldColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
    }
    @IBAction func onBallerTapped(_ sender: Any) {
        selectSkill(skillType: "baller")
        Helpers.changeButtonColor(index: 1, buttonArray: buttonArray, newColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), oldColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
    }
    @IBAction func onFinishTapped(_ sender: Any) {
        print(player.desiredLeague + " "  + player.selectedSkillLevel + "\nFinished")
        exit(0) //not accepted by apple, just for this example
    }
    
    func selectSkill(skillType: String) {
        player.selectedSkillLevel = skillType
        if player.selectedSkillLevel != "" {
            finishBtn.isHidden = false
            finishBtn.isEnabled = true
        }
    }
}
