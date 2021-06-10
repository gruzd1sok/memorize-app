//
//  EmojiMemoryGame.swift
//  memorize-app
//
//  Created by Илья Груздев on 28.04.2021.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return "😃"
}

class EmojiMemoryGame: ObservableObject {
   @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷","🕸","🧟‍♀️"]
    return MemoryGame<String>(numbersOfPairsOfCards: Int.random(in: 2...emojis.count)) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
//    MARK: - Access ot the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
//    MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
    model.choose(card: card)
    }
}
