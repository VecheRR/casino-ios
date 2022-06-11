//
//  pairOfCards.swift
//  casino
//
//  Created by Владичка Вечер on 11.06.2022.
//

import SwiftUI

struct pairOfCards: View {
    var suit1: Suit
    var suit2: Suit
    var rank1: Rank
    var rank2: Rank
    
    var body: some View {
        HStack(spacing: -10) {
            CardView(suit: suit1, rank: rank1)
                .rotationEffect(Angle(degrees: -20))
            CardView(suit: suit2, rank: rank2)
                .rotationEffect(Angle(degrees: 20))
        }
    }
}

struct pairOfCards_Previews: PreviewProvider {
    static var previews: some View {
        pairOfCards(suit1: .Diamonds, suit2: .Spades, rank1: .Five, rank2: .Ten)
    }
}
