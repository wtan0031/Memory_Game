//
//  EmojiMemoryGame.swift
//  Memory_Game
//
//  Created by Wei Liang Tan on 02/04/2022.
//

import SwiftUI


class EmojiMemoryGame : ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚝", "✈️", "🚀", "🏍","🚎", "🚌", "🚑", "🛬", "🚓", "🛵","🚜","🚒","🚁","🚤","🛸","🚋","⛴","🚟", "🏍"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex  in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
    
}


