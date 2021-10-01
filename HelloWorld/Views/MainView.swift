//
//  MainView.swift
//  HelloWorld
//
//  Created by Marc Petit Vecino on 28/9/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView().frame(height: 400)
                ImageView().offset(y: -150)
                Divider().padding()
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            MainView()
                .preferredColorScheme(.dark)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
