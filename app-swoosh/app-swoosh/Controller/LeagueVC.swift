//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Octavian on 21/12/2017.
//  Copyright © 2017 Octavian. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player! //implicitly unwrap, we don't want the code to run if there isn't a player
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    var buttonArray: [BorderButton] = [BorderButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player() //initialize the struct, when view loads it creates a new player
        self.buttonArray = [self.mensBtn, self.womensBtn, self.coedBtn]
        // Do any additional setup after loading the view.
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        self.player.desiredLeague = ""
        Helpers.resetButtonColors(buttonArray: buttonArray, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
        nextBtn.isHidden = true
        nextBtn.isEnabled = false
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
        Helpers.changeButtonColor(index: 0, buttonArray: buttonArray, newColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), oldColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
        Helpers.changeButtonColor(index: 1, buttonArray: buttonArray, newColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), oldColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
    }
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
        Helpers.changeButtonColor(index: 2, buttonArray: buttonArray, newColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), oldColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4))
    }
    
    //LeagueVC logic
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        if player.desiredLeague != "" {
            nextBtn.isHidden = false
            nextBtn.isEnabled = true
        }
    }
    

    //if let sequence - try and run an operation, in this case it will try and assign the destination VC in that constant, if it fails, the if statement will fail
    //it will grab the code from the next VC and store it in the variable
    //prepare lets you do things before the segue actually loads on the screen
    //this is how you PASS DATA between the screens
    //prepareForSegue is ALWAYS called before viewDidLoad on the destination VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player //the player from this screen is passed to the player in the next screen
        }
    }
}
