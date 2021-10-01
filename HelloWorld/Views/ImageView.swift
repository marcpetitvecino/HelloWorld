//
//  ImageView.swift
//  HelloWorld
//
//  Created by Marc Petit Vecino on 23/9/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("swift_logo")
                .resizable()
                .padding(20)
                .frame(width: 150, height: 75)
                .background(Color.gray)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.orange, lineWidth: 4))
                .shadow(color: .gray, radius: 5)
            
            Image(systemName:"square.and.pencil")
                .resizable()
                .padding(20)
                .frame(width: 150, height: 75)
                .background(Color.gray)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.orange, lineWidth: 4))
                .shadow(color: .gray, radius: 5)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
