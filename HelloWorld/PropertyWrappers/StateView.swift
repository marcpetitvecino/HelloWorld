//
//  StateView.swift
//  HelloWorld
//
//  Created by Marc Petit Vecino on 1/10/21.
//

import SwiftUI

class UserData: ObservableObject  {
    @Published var name = "Marc"
    @Published var age = 21
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value+=1
                }
                Text("Mi nombre es \(user.name) y mi edad \(user.age)")
                Button("Actualizar datos") {
                    user.name = "Marc Petit"
                    user.age = 22
                }
                NavigationLink(destination: BindingView(value: $value, user: user),tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
            }.navigationTitle("StateView")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
