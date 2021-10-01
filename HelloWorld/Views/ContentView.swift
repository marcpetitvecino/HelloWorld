//
//  ContentView.swift
//  HelloWorld
//
//  Created by Marc Petit Vecino on 22/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(Color.blue)
                .padding()
            Spacer()
            
            ZStack {
                Text("")
                    .frame(
                    maxWidth: .infinity,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.gray).padding()
                Text("")
                    .frame(
                    maxWidth: .infinity,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.green).padding(40)
                Text("")
                    .frame(
                    maxWidth: .infinity,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.red).padding(60)
                Text("")
                    .frame(
                    maxWidth: .infinity,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.blue).padding(80)
            }
            
            Spacer()
            
            HStack {
                Text("Flipsi")
                    .font(.title)
                    .foregroundColor(Color.red)
                    .padding()
                
                Spacer()
                    
                Text("Flopsi")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
                    .padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
