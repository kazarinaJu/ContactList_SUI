//
//  NumbersView.swift
//  ContactList
//
//  Created by Юлия Ястребова on 24.06.2023.
//

import SwiftUI

struct NumbersListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullname).font(.headline)) {
                    ContactRowView(content: contact.phone, image: "phone")
                    ContactRowView(content: contact.email, image: "square.and.pencil")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Numbers List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(contacts: Person.getContactList())
    }
}
