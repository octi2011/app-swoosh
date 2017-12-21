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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player() //initialize the struct, when view loads it creates a new player

        // Do any additional setup after loading the view.
    }
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    //LeagueVC logic
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
}
