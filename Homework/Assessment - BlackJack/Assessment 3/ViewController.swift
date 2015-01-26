//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    var player = Player()
    var computer = Player()
    var newGame = CardGame(player: Player(), cpu: Player())
    
    @IBOutlet weak var titleAndResults: UILabel!
    @IBOutlet weak var playerScoreField: UILabel!
    @IBAction func dealNewCard(sender: UITapGestureRecognizer) {
        
        // verify that both the player's and the computer's hands do not total more than 21
        if computer.busting == false && player.busting == false {
            
            UIView.animateWithDuration(1, animations: {
                self.redBox.backgroundColor = UIColor(red: 130.0 / 255.0, green: 200.0 / 255.0, blue: 50.0 / 255.0, alpha: 1.0)
                self.redBox.backgroundColor = UIColor(red: 8.0 / 255.0, green: 128.0 / 255.0, blue: 0.0, alpha: 1.0)
            })
            // Update the player's hand by adding the score of one card (between 1 and 11)
            player.cardHand = newGame.deal(player.cardHand)
            playerScoreField.text = String(player.cardHand)
            
            // if the player's hand totals more than 21, they lost
            if player.cardHand > 21 {
                titleAndResults.font = UIFont (name: "System", size: 14)
                titleAndResults.text = "Player's hand is \(player.cardHand) (>21) so they lost"
                player.busting = true
                
            }
            
            // Each round, the 'dealer' (i.e. computer here) has to draw an additional card until its score is >= 17
            if computer.cardHand < 17 {
                computer.cardHand = newGame.deal(computer.cardHand)
                println("Computer score is now: \(computer.cardHand)")
            } else {
                println("Computer score is \(computer.cardHand), which is >= 17 so they don't draw any more card")
            }
            
            if computer.cardHand > 21 {
                titleAndResults.font = UIFont (name: "System", size: 14)
                titleAndResults.text = "Dealer's hand is \(computer.cardHand) (>21) so they lost"
                computer.busting = true
                
            }
            
//            UIView.animateWithDuration(2.5, animations: {
//                self.redBox.backgroundColor = UIColor(red: 8.0 / 255.0, green: 128.0 / 255.0, blue: 0.0, alpha: 1.0)
//            })
        }
        
    }
    
    @IBOutlet weak var redBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Make the corner of the green card rounded
        redBox.layer.cornerRadius = 5
        
        // Initialize the newGame object with the 'player' and 'cpu' instances of the Player class
        newGame = CardGame(player: player, cpu: computer)
        
        println("Player score is: \(player.cardHand) and computer score is: \(computer.cardHand)")
        
        playerScoreField.text = String(player.cardHand)
        
        // if the player gets 21 points on her first two cards (called a blackjack)
        // AND if the dealer doesn't have a blackjack, then the player wins and the game is over
        if player.cardHand == 21 && computer.cardHand < 21 {
            titleAndResults.font = UIFont (name: "System", size: 14)
            titleAndResults.text = "Player's hand is a blackjack!"
            computer.busting = true
            
        }

    }


}

