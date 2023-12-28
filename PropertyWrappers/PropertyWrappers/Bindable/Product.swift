//
//  Product.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 02/12/23.
//

import Foundation
import Observation

@Observable final class Product: Decodable, Identifiable, Hashable {
    static func == (lhs: Product, rhs: Product) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }

    var id: Int
    var title: String
    var description: String
    var price: Int
    var discountPercentage: Double
    var rating: Double
    var stock: Int
    var brand: String
    var category: String
    var thumbnail: String
    var images: [String]

    enum CodingKeys: String, CodingKey {
      case id
      case title
      case description
      case price
      case discountPercentage
      case rating
      case stock
      case brand
      case category
      case thumbnail
      case images
    }
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.price = try container.decode(Int.self, forKey: .price)
        self.discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)
        self.rating = try container.decode(Double.self, forKey: .rating)
        self.stock = try container.decode(Int.self, forKey: .stock)
        self.brand = try container.decode(String.self, forKey: .brand)
        self.category = try container.decode(String.self, forKey: .category)
        self.thumbnail = try container.decode(String.self, forKey: .thumbnail)
        self.images = try container.decode([String].self, forKey: .images)
    }
}

extension Product {
    static let allProduct: [Product] = Bundle.main.decodeJSON(file: "products.json")
    static let dummyProduct: Product = allProduct[0]
}

extension Bundle {
    func decodeJSON<T: Decodable>(file: String) -> T {
        let data: Data
        var decodedData: T
        guard let file = Bundle.main.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't find \(file) in main bundle.")
        }
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(file) from main bundle:\n\(error)")
        }
        do {
            let decoder = JSONDecoder()
            decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            fatalError("Couldn't parse \(file) as \(T.self):\n\(error)")
        }
    }
}
