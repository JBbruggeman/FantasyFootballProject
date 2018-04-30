//
//  PlayerDetailViewController.swift
//  FantasyFootballProject
//
//  Created by John on 4/30/18.
//  Copyright © 2018 John Bruggeman. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    @IBOutlet weak var salaryNumberText: UILabel!
    @IBOutlet weak var yearNumberLeftText: UILabel!
    @IBOutlet weak var ownerNameText: UILabel!
    @IBOutlet weak var playerPositionText: UILabel!
    @IBOutlet weak var playerNameText: UILabel!
    @IBOutlet weak var rotoworldBlurbText: UILabel!
    
    var player: players!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if player == nil {
            player = players(name: "", position: "", salary: 0.00, yearsLeft: 0, owner: "", rotoworldBlurb: "")
        }
        
        playerNameText.text = player.name
        playerPositionText.text = player.position
        ownerNameText.text = player.owner
        rotoworldBlurbText.text = player.rotoworldBlurb
        salaryNumberText.text = "$\(player.salary)0"
        if player.yearsLeft == 1 {
            yearNumberLeftText.text = "\(player.yearsLeft) year left"
        } else {
            yearNumberLeftText.text = "\(player.yearsLeft) years left"
        }
        
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        player.name = playerNameText.text!
    }


}
