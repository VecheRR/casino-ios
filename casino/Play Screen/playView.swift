//
//  playView.swift
//  casino
//
//  Created by Владичка Вечер on 10.06.2022.
//

import SwiftUI

struct playView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ZStack(alignment: .leading) {
                    ZStack(alignment: .trailing) {
                        ZStack(alignment: .bottom) {
                            tableView()
                            pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                        }
                        VStack(spacing: 60) {
                            pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                            pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                        }
                        .padding(-20)
                    }
                    VStack(spacing: 60) {
                        pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                        pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                    }
                    .padding(-20)
                }
                pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
            }
            
            Spacer()
            
            HStack(spacing: 30) {
                Text("Fold")
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.red, lineWidth: 3)
                    )
                Text("Call")
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.red, lineWidth: 3)
                    )
                Text("Raise")
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.red, lineWidth: 3)
                    )
            }
            .font(.system(size: 30))
    
            
        }
    }
}

struct playView_Previews: PreviewProvider {
    static var previews: some View {
        playView()
    }
}
