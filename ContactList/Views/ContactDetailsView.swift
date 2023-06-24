//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by Юлия Ястребова on 24.06.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            ContactRowView(content: person.phone, image: "phone")
            ContactRowView(content: person.email, image: "square.and.pencil")
        }
        .navigationTitle(person.fullname)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContactList().first!)
    }
}
