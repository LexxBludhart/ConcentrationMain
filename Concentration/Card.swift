//
//  Card.swift
//  Concentration
//
//  Created by Rhett Levitz on 3/24/22.
//

import Foundation


struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identidierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identidierFactory += 1
        return identidierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
