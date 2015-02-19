//
//  SecondViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var gameRules: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gameRules.text = "1. Tap twice on green box to get dealt another card. \n2. Swipe right to stop dealing cards and compare your score to CPU's \n3. If your score goes above 21, you lose.\n\n Blackjack is a comparing card game between a player and dealer. The object of the game is to beat the dealer, which can be done in a number of ways: \n - Get 21 points on the player's first two cards (called a blackjack), without a dealer blackjack;\n - Reach a final score higher than the dealer without exceeding 21; or\n -Let the dealer draw additional cards until his or her hand exceeds 21.\n\nThe player or players are dealt an initial two-card hand and add together the value of their cards. Face cards (kings, queens, and jacks) are counted as ten points. A player and the dealer can count his or her own ace as 1 point or 11 points. All other cards are counted as the numeric value shown on the card. After receiving their initial two cards, players have the option of getting a 'hit', or taking an additional card. In a given round, the player or the dealer wins by having a score of 21 or by having the highest score that is less than 21. Scoring higher than 21 (called 'busting' or 'going bust') results in a loss. A player may win by having any final score equal to or less than 21 if the dealer busts."
    }


    @IBAction func dismissRules(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
