//
//  ContentView.swift
//  ContactList
//
//  Created by Юлия Ястребова on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            HomeScreenView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
