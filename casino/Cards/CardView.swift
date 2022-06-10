//
//  CardView.swift
//  casino
//
//  Created by Владичка Вечер on 10.06.2022.
//

import SwiftUI

struct CardView: View {
    var suit: Suit
    var rank: Rank
    
    var color: Color {
        switch suit {
        case .Diamonds, .Hearts: return .red
        case .Clubs, .Spades:    return .black
        }
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading) {
                Image(systemName: suit.rawValue)
                    .font(.system(size: 30))
                    .frame(width: w * k, height: h * k)
                    .foregroundColor(color)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                )
                VStack {
                    Text(rank.rawValue)
                    Image(systemName: suit.rawValue)
                }
                .padding(5)
                .foregroundColor(color)
            }
            VStack {
                Image(systemName: suit.rawValue)
                Text(rank.rawValue)
                    .rotationEffect(Angle(degrees: 180))
            }
            .padding(5)
            .foregroundColor(color)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                CardView(suit: .Diamonds, rank: .Ace)
                CardView(suit: .Clubs, rank: .Ace)
            }
            HStack {
                CardView(suit: .Hearts, rank: .Ace)
                CardView(suit: .Spades, rank: .Ace)
            }
        }
    }
}
