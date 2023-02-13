//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI
import Combine


struct ContentView: View {
    @State var selection: Contact?
    
    let contacts = [
        Contact(name: "Bil", city: "Toronto"),
        Contact(name: "Edik", city: "Montreal"),
        Contact(name: "Olga", city: "Ottawa"),
        Contact(name: "Natasha", city: "Edmonton"),
        Contact(name: "Mike", city: "Vancouver"),
        Contact(name: "Ket", city: "Calgary"),
        Contact(name: "", city: ""),
    ]

    var body: some View {
        VStack {
            HStack {
                ForEach(contacts) { contact in
                    Button(contact.name) { selection = contact }
                }
            }
            
               
            if let c = selection {
                Detail(contact: c).padding()
            }
        }
    }
}

final class Contact: ObservableObject, Identifiable {
    
    let id = UUID()
    
    @Published var name: String
    @Published var city: String
    
    init(name: String, city: String) {
        self.name = name
        self.city = city
    }
    
}

struct Detail: View {
   @ObservedObject var contact: Contact
    
    var body: some View {
        VStack {
            Text(contact.name).bold()
            Text(contact.city)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




