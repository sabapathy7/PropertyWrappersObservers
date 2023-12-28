//
//  File.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 02/12/23.
//

import Foundation
import Observation
@Observable final class ProductListModel {
    var products: [Product] = []

    func refreshData() {
        products = Bundle.main.decodeJSON(file: "products.json")
    }
}
