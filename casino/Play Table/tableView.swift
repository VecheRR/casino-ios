//
//  tableView.swift
//  casino
//
//  Created by Владичка Вечер on 11.06.2022.
//

import SwiftUI

struct tableView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 1000)
            .frame(width: tableWidth, height: tableHeight)
            .foregroundColor(Color(hue: 0.366, saturation: 0.898, brightness: 0.618))
            .overlay(
                RoundedRectangle(cornerRadius: 1000)
                    .stroke(Color(hue: 0.134, saturation: 0.967, brightness: 0.826), lineWidth: 25)
            )
    }
}

struct tableView_Previews: PreviewProvider {
    static var previews: some View {
        tableView();
    }
}
