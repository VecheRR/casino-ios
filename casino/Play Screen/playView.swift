//
//  playView.swift
//  casino
//
//  Created by Владичка Вечер on 10.06.2022.
//

import SwiftUI

struct playView: View {
    var body: some View {
        ZStack {
            tableView()
                .frame(width: heightOfScreen, height: widthOfScreen - 125, alignment: .top)
            pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                .frame(width: heightOfScreen, height: widthOfScreen - 100, alignment: .bottom)
            pairOfCards(suit1: .Spades, suit2: .Diamonds, rank1: .Ten, rank2: .Jack)
                .frame(width: heightOfScreen, height: widthOfScreen - 75, alignment: .top)
            HStack(spacing: 50) {
                foldView()
                callView()
                raiseView()
            }
            .font(.system(size: 30))
            .frame(width: heightOfScreen - 75, height: widthOfScreen - 20, alignment: .bottomTrailing)
            dealerButton()
                .frame(width: heightOfScreen - 600, height: widthOfScreen / 2, alignment: .bottomTrailing)
        }
    }
}

struct playView_Previews: PreviewProvider {
    static var previews: some View {
        playView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
