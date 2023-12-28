//
//  ProductEditView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 02/12/23.
//

import SwiftUI
import Observation

struct ProductEditView: View {
    @Bindable var product: Product
    var body: some View {
        Form(content: {
            HStack {
                Text("ID:")
                Spacer()
                Text("\(product.id)")
            }
            TextField("Title", text: $product.title)
            TextField("Description", text: $product.description, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(2, reservesSpace: true)
            TextField("brand", text: $product.brand)
            Section("Images") {
                ForEach(product.images, id: \.self) { image in
                    AsyncImage(url: URL(string: image)) { image in
                        image.resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(0.5, contentMode: .fit)
                            .clipShape(Rectangle())
                    } placeholder: {
                        ProgressView()
                    }

                }
            }
        })
        .textFieldStyle(.roundedBorder)
        .formStyle(.grouped)
        .frame(minWidth: 300, minHeight: 300)
    }
}

#Preview {
    ProductEditView(product: Product.dummyProduct)
}
