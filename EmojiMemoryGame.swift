//
//  EmojiMemoryGame.swift
//  Lec1
//
//  Created by Sean Yeh on 5/28/20.
//  Copyright © 2020 Sean Yeh. All rights reserved.
//

import SwiftUI

class emojiMemoryGame: ObservableObject{
    @Published private var model: MemoryGame<String> = emojiMemoryGame.createMemoryGame()
    static func createMemoryGame()->MemoryGame<String>{
        let emojis: Array<String> = ["🎮","🎳","🚙","🚑","🎲"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2..<5)) { pairIndex in
            return emojis[pairIndex]
        }
    }
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    func choose(card: MemoryGame<String>.Card)
    {
        model.choose(card: card)
    }
    
}
