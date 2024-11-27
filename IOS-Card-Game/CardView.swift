
import SwiftUI

struct CardView: View {
    let isFlipped: Bool
    let card: String
    
    var body: some View {
        Text(isFlipped ? card : "❓")
            .font(.largeTitle)
            .frame(width: 80, height: 120)
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

#Preview {
    CardView(isFlipped: false, card: "Hello, World!")
}
