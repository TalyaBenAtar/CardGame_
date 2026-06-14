//
//  GameViewController.swift
//  CardGame
//
//  Created by Talya Benatar on 14/06/2026.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var pcScoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!

    @IBOutlet weak var playerCardImageView: UIImageView!
    @IBOutlet weak var pcCardImageView: UIImageView!
    
    var playerName = ""

    var playerScore = 0
    var pcScore = 0

    var currentRound = 1
    var countdown = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerNameLabel.text = playerName
        playerScoreLabel.text = "0"
        pcScoreLabel.text = "0"
        timerLabel.text = "5"
        roundLabel.text = "Round 1/10"
        
        print("Player name = \(playerName)")
        
    }
    

}
