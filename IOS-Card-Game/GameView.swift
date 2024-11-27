
import SwiftUI

struct GameView: View {
    @StateObject private var game = GameLogic()
    
    var body: some View {
        VStack {
            Text(game.gameMessage)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                ForEach(game.cards.indices, id: \.self) { index in
                    Button(action: { game.flipCard(index: index) }) {
                        CardView(isFlipped: game.flippedCard == game.cards[index], card: game.cards[index])
                    }
                }
            }
            .padding()
            
            Button("Reset Game", action: game.resetGame)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}



#Preview {
    GameView()
}
