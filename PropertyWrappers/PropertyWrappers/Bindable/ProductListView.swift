//
//  ProductListView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/11/23.
//

import SwiftUI

struct ProductListView: View {
    @State private var productList = ProductListModel()
    @State private var selectedProduct: Product?
    @State private var shouldShowInspector = false
    var body: some View {
        Text(Constants.bindableUse)
            .font(.caption)
            .frame(maxWidth: .infinity, alignment: .center)
        List(selection: $selectedProduct) {
            ForEach($productList.products) { $product in
                Text(product.title)
                    .tag(product)
            }
        }
        .inspector(isPresented: $shouldShowInspector) {
            if let selectedProduct {
                ProductEditView(product: selectedProduct)
            }
        }
        .navigationTitle(Constants.bindableProduct)
        .onAppear {
            productList.refreshData()
        }
        .onChange(of: selectedProduct) { _, newValue in
            shouldShowInspector = newValue != nil
        }
        Text(Constants.bindableUseCase)
            .font(.footnote)
    }
}

#Preview {
    NavigationStack {
        ProductListView()
    }
}
