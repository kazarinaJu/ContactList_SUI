//
//  ContactRowView.swift
//  ContactList
//
//  Created by Юлия Ястребова on 24.06.2023.
//

import SwiftUI

struct ContactRowView: View {
    let content: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: "\(image)")
                .resizable()
                .frame(width: 25, height: 20)
                .foregroundColor(.blue)
            Text(content)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(
            content: Person.getContactList().randomElement()?.email ?? "",
            image: "paperplane.fill"
        )
    }
}
