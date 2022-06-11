//
//  mainView.swift
//  casino
//
//  Created by Владичка Вечер on 10.06.2022.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                playView()
                    .navigationBarBackButtonHidden(true)
            }
            label: {
                Text("Start Game")
                    .font(.system(size: 30))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.green, lineWidth: 3)
                            .padding(-5)
                    )
            }
            .navigationTitle(Text("Pocker House"))
            .toolbar {
                VStack(alignment: .leading) {
                    Text("Real balance: \(realBalance)")
                    Text("Chips balance: \(chipsBalance)")
                }
            }
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
