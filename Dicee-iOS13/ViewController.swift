//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceImages: [UIImage] = [UIImage(named: "DiceOne")!, UIImage(named: "DiceTwo")!, UIImage(named: "DiceThree")!, UIImage(named: "DiceFour")!, UIImage(named: "DiceFive")!, UIImage(named: "DiceSix")! ]
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func rollButton(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        diceImageViewOne.image = diceImages[leftDiceNumber]
        diceImageViewTwo.image = diceImages[rightDiceNumber]
    }
    
}

