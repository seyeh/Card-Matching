//
//  EmojiMemoryGameView.swift
//  Lec1
//
//  Created by Sean Yeh on 5/24/20.
//  Copyright © 2020 Sean Yeh. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: emojiMemoryGame
    @State var gameOver = false
    var body: some View {
        Button(action: {
            // What to perform
            print("Hello World")
        }) {
            // How the button looks like
            Text("Hello World").background(Color.purple)
        }
        return Grid(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            
            }.padding().foregroundColor(Color.blue)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    func body(for size: CGSize) -> some View{
        ZStack{
            if(card.isFaceUp){
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            }
            else{
                if !card.isMatched{
                    RoundedRectangle(cornerRadius: cornerRadius).fill()
                }
            }
        }.font(Font.system(size: min(size.width, size.height)*fontScalarFactor))
    }
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    let fontScalarFactor: CGFloat = 0.75
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: emojiMemoryGame())
    }
}
