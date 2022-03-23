//
//  Game.swift
//  bulleyes
//
//  Created by AMStudent on 8/26/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1..<100)
    var score = 0
    var round = 1
    
    func points(SliderValue: Int) -> Int {
        100 - abs(target - SliderValue)
        }
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
        }
    mutating func restart() {
        score = 0
        score = 1
        target = Int.random(in: 1...100)
    }
}

//       if SliderValue > self.target {
//            difference = SliderValue - self.target
//        } else if self.target > SliderValue {
//            difference = self.target - SliderValue
//        } else {
//            difference = 0
//        }


//            if difference < 0 {
//            difference = difference * -1
//        }
