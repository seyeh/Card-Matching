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
        var themes = [[String]]()
        themes.append(["🐶","🐱","🦊","🐸","🐭"])
        themes.append(["😃","😀","😆","😂","🤣","😊"])
        themes.append(["🚗","🚕","🚙","🚓","🏎","🚖","🚘"])
        themes.append(["✈️","🛫","🛬","🛩"])
        themes.append(["⛵️","🚤","🛥","🛳","⛴","🚢"])
        var random: Array<String> =  []
        random.append(String.randomEmoji())
        random.append(String.randomEmoji())
        random.append(String.randomEmoji())
        themes.append(random)
        let themeNum = Int.random(in:0..<themes.count)
        return MemoryGame<String>(numberOfPairsOfCards: themes[themeNum].count) { pairIndex in
            return themes[themeNum][pairIndex]
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
