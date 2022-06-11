//
//  backButtonView.swift
//  casino
//
//  Created by Владичка Вечер on 11.06.2022.
//

import SwiftUI

struct backButtonView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
        
    var body : some View {
        Text("Settings")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "x.circle")
            })
    }
}

struct backButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink(destination: backButtonView()) {
            Text("Bebra")
        }
    }
}
