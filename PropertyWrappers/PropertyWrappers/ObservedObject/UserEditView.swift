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
                Text(Constants.editViewID)
                Spacer()
                Text(user.userID)
            }
            TextField(Constants.editViewName, text: $user.username)
            TextField(Constants.editViewEmail, text: $user.email, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(2, reservesSpace: true)
            TextField(Constants.editViewDOB, text: $user.birthDate)
            Section(Constants.editViewProfPic) {
                AsyncImage(url: URL(string: user.image)) { image in
                    image
                        .imageModifier()
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
