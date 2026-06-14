//
//  StartViewController.swift
//  CardGame
//
//  Created by Talya Benatar on 14/06/2026.
//
    
import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startToGame" {
            let gameVC = segue.destination as! GameViewController
            
            let name = nameTextField.text ?? ""
            gameVC.playerName = name.isEmpty ? "Player" : name
        }
    }
}

