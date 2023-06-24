//
//  NumbersView.swift
//  ContactList
//
//  Created by Юлия Ястребова on 24.06.2023.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullname).font(.headline)) {
                    ContactRowView(content: contact.phone, image: "phone")
                    ContactRowView(content: contact.email, image: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
