//
//  UserListView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 28/12/23.
//

import SwiftUI

struct UserListView: View {
    @StateObject private var userList = UserListModel()
    @State private var selectedUser: User?
    @State private var shouldShowInspector = false
    var body: some View {
        Text(Constants.observedObjectTitle)
            .font(.title)
            .padding()
        Text(Constants.observedObjectUse)
            .font(.caption)
            .frame(maxWidth: .infinity, alignment: .center)
        List(selection: $selectedUser) {
            ForEach($userList.users, id: \.self) { $user in
                Text(user.username)
                    .tag(user)
            }
        }
        .inspector(isPresented: $shouldShowInspector) {
            if let selectedUser {
                UserEditView(user: selectedUser)
            }
        }
        .navigationTitle("Product")
        .onAppear {
            userList.refreshUsers()
        }
        .onChange(of: selectedUser) { _, newValue in
            shouldShowInspector = newValue != nil
        }
        Text("ListView fields are editable.")
            .font(.footnote)
    }
}

#Preview {
    UserListView()
}
