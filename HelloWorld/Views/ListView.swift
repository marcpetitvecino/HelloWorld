//
//  ListView.swift
//  HelloWorld
//
//  Created by Marc Petit Vecino on 29/9/21.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    
    @Published var programmers = [
        Programmer(
            id: 0,
            name: "Marc Petit",
            languages: "Kotlin, Java, Swift",
            avatar: Image(systemName: "person"),
            favorite: true),
        Programmer(
            id: 1,
            name: "Johnny Johnson",
            languages: "C++, COBOL",
            avatar: Image(systemName: "person.fill"),
            favorite: false),
        Programmer(
            id: 2,
            name: "Flipsi McFlopsi",
            languages: "Python",
            avatar: Image(systemName: "person.fill"),
            favorite: true)
    ]
    
}

struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers : [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $showFavorites) {
                    Text("Favoritos")
                }.padding()
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                }
            }.navigationTitle("Programmers")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
