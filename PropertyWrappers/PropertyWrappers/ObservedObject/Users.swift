//
//  Users.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 28/12/23.
//

import Foundation

// MARK: - UserElement
final class User: Codable, ObservableObject, Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
    var id: Int
    var firstName, lastName, maidenName: String
    let age: Int
    var gender, email, phone, username: String
    let password: String
    var birthDate: String
    var image: String
    let bloodGroup: String
    let height: Int
    let weight: Double
    let eyeColor: String
    let hair: Hair
    let domain, ip: String
    let address: Address
    let macAddress, university: String
    let bank: Bank
    let company: Company
    let ein, ssn, userAgent: String

    var userID: String {
        "\(id)"
    }
}

// MARK: - Address
struct Address: Codable {
    let address, city: String
    let coordinates: Coordinates
    let postalCode, state: String
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let lat, lng: Double
}

// MARK: - Bank
struct Bank: Codable {
    let cardExpire, cardNumber, cardType, currency: String
    let iban: String
}

// MARK: - Company
struct Company: Codable {
    let address: Address
    let department, name, title: String
}

// MARK: - Hair
struct Hair: Codable {
    let color, type: String
}

typealias Users = [User]

extension User {
    static let allUser: [User] = Bundle.main.decodeJSON(file: "users.json")
    static let dummyUser: User = allUser[0]
}
