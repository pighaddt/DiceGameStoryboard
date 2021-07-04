//
//  ViewController.swift
//  DiceGameStoryboard
//
//  Created by 游舜宇 on 2021/7/3.
//

import UIKit

class ViewController: UIViewController {
    var diceArray = ["Dice1", "Dice2", "Dice3", "Dice4", "Dice5", "Dice6"]

    @IBOutlet weak var Dice1Image: UIImageView!
    @IBOutlet weak var Dice2Image: UIImageView!
    @IBAction func rollBtn(_ sender: Any) {
        updateDice()
    }
    
    func updateDice() {
        let dice1value = Int(arc4random_uniform(UInt32(diceArray.count)))
        let dice2value = Int(arc4random_uniform(UInt32(diceArray.count)))
        Dice1Image.image = UIImage(named: diceArray[dice1value])
        Dice2Image.image = UIImage(named: diceArray[dice2value])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (motion == UIEvent.EventSubtype.motionShake){
            updateDice()
        }
    }
    
}

