//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation
protocol BlackJack {
    // deal method
    func deal(currentHand: Int)-> Int
    
    // Require a first hand method
    func firstHand()-> (playerHand:Int, cpuHand:Int)
}

class CardGame: BlackJack {
    
    // firstHand method: at the beginning of a game, hands out two random "cards" between 1 and 11 and add them together
    func firstHand() -> (playerHand:Int, cpuHand:Int) {
        
        // arc4random_uniform() will return a uniformly distributed random number less than upper_bound.
        var playerHand = Int(arc4random_uniform(11)+1)+Int(arc4random_uniform(11)+1)
        
        // here arc4random_uniform() returns a number between 0 and 9 so we add 12 to that number to get something between 12 and 21
        var cpuHand = Int(arc4random_uniform(10))+12
        
        return (playerHand, cpuHand)
    }
    
    
    func deal(currentHand: Int) -> Int {
        
        // arc4random_uniform() will return a uniformly distributed random number less than upper_bound.
        var newHand = Int(arc4random_uniform(11))+1
        
        return currentHand + newHand
    }
    
    init(player: Player, cpu:Player) {
        var firstHandResult = firstHand()
        player.cardHand = firstHandResult.playerHand
        cpu.cardHand = firstHandResult.cpuHand
    }
    
    
}