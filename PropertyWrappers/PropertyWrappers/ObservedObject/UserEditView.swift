//
//  UserEditView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 28/12/23.
//

import SwiftUI

struct UserEditView: View {
    @ObservedObject var user: User
    var body: some View {
        Form(content: {
            HStack {
                Text("ID:")
                Spacer()
                Text(user.userID)
            }
            TextField("Name", text: $user.username)
            TextField("Email", text: $user.email, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(2, reservesSpace: true)
            TextField("DOB", text: $user.birthDate)
            Section("Profile Pic") {
                AsyncImage(url: URL(string: user.image)) { image in
                    image.resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(0.5, contentMode: .fit)
                        .clipShape(Rectangle())
                } placeholder: {
                    ProgressView()
                }

            }
        })
        .textFieldStyle(.roundedBorder)
        .formStyle(.grouped)
        .frame(minWidth: 300, minHeight: 300)

    }
}

#Preview {
    UserEditView(user: User.dummyUser)
}
