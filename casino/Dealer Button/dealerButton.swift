//
//  dealerButton.swift
//  casino
//
//  Created by Владичка Вечер on 11.06.2022.
//

import SwiftUI

struct dealerButton: View {
    var body: some View {
        
        Text("D")
            .font(.system(size: 30))
            .overlay(Circle()
                .stroke(.red, lineWidth: 2)
                .padding(-8)
            )
            .foregroundColor(.red)
    }
}

struct dealerButton_Previews: PreviewProvider {
    static var previews: some View {
        dealerButton()
    }
}
