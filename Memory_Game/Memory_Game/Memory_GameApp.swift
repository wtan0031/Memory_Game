//
//  Memory_GameApp.swift
//  Memory_Game
//
//  Created by Wei Liang Tan on 02/04/2022.
//

import SwiftUI

@main
struct Memory_GameApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
