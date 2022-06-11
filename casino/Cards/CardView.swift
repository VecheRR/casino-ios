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
    
//    var body: some View {
//        ZStack {
//            Color.white
//                .clipShape(RoundedRectangle(cornerRadius: 15))
//            ZStack(alignment: .bottomTrailing) {
//                Image(systemName: suit.rawValue)
//                    .font(.system(size: 30))
//                    .frame(width: w * k, height: h * k)
//                    .foregroundColor(color)
//            }
//
//            VStack {
//                Text(rank.rawValue)
//                Image(systemName: suit.rawValue)
//            }
//            .padding(5)
//            .foregroundColor(color)
//        }
//    }
    
    var body: some View {
        ZStack {
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
                ZStack(alignment: .topLeading) {
                    ZStack(alignment: .bottomTrailing) {
                        Image(systemName: suit.rawValue)
                            .font(.system(size: 40))
                            .frame(width: w * k, height: h * k, alignment: .bottomTrailing)
                            .foregroundColor(color)

                    }

                    VStack {
                        Text(rank.rawValue)
                            .font(.system(size: 26))
                        Image(systemName: suit.rawValue)
                            .font(.system(size: 18))
                    }
                    .padding(5)
                    .foregroundColor(color)
                }
        }
        .frame(width: w * k, height: h * k)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.black, lineWidth: 2)
        )
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
