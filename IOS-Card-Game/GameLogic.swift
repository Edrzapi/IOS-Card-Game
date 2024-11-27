
import Foundation
import SwiftUI

class GameLogic: ObservableObject {
    @Published var cards = ["🎉", "💎", "🔥", "🍀"].shuffled()
    @Published var flippedCard: String? = nil
    @Published var goalCard: String = "🎉"  
    @Published var gameMessage: String = "Flip a card to find 🎉!"
    
    func flipCard(index: Int) {
        flippedCard = cards[index]
        checkWin()
    }
    
    func resetGame() {
        cards.shuffle()
        flippedCard = nil
        gameMessage = "Flip a card to find \(goalCard)!"
    }
    
    private func checkWin() {
        if flippedCard == goalCard {
            gameMessage = "🎉 You found \(goalCard)! You win!"
        } else {
            gameMessage = "Keep trying!"
        }
    }
}
