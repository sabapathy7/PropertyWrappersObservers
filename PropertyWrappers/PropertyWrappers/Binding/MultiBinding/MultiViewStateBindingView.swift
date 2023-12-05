//
//  MultiViewStateBindingView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/11/23.
//

import SwiftUI

struct MultiViewStateBindingView: View {
    @State private var counterValue = 0
    var body: some View {
        Text("Parent view Value = \(counterValue)")
            .font(.title)
            .padding()
        NumberChooser(counterValue: $counterValue)
    }
}

#Preview {
    MultiViewStateBindingView()
}
