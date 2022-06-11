//
//  raiseView.swift
//  casino
//
//  Created by Владичка Вечер on 11.06.2022.
//

import SwiftUI

struct raiseView: View {
    var body: some View {
        Button {
            print("Vebra")
        } label: {
            Text("Raise")
                .font(.system(size: fontSize))
                .foregroundColor(.black)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(.red, lineWidth: 2)
                    .padding(-10)
                )
        }
    }
}

struct raiseView_Previews: PreviewProvider {
    static var previews: some View {
        raiseView()
    }
}
