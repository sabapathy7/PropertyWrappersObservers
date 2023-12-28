//
//  UserListModel.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 28/12/23.
//

import Foundation

final class UserListModel: ObservableObject {
    @Published var users: [User] = []
    func refreshUsers() {
        users = Bundle.main.decodeJSON(file: "users.json")
    }
}
