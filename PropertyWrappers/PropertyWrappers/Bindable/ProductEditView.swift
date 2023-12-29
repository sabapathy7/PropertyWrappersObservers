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
                Text(Constants.editViewID)
                Spacer()
                Text("\(product.id)")
            }
            TextField(Constants.editViewTitle, text: $product.title)
            TextField(Constants.editViewDesc, text: $product.description, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(2, reservesSpace: true)
            TextField(Constants.editViewBrand, text: $product.brand)
            Section(Constants.editViewImage) {
                ForEach(product.images, id: \.self) { image in
                    AsyncImage(url: URL(string: image)) { image in
                        image
                            .imageModifier()
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
