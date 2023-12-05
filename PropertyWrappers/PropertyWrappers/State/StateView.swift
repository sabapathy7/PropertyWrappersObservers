//
//  StateView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/11/23.
//

import SwiftUI

struct StateView: View {
    @State private var colorToggle: Color = .blue
    var body: some View {
        Text("@State").font(.title)
        Text("Single source of truth for value types")
            .font(.subheadline)

        Spacer()

        Rectangle()
            .fill(colorToggle)
            .frame(width: 100, height: 100)
            .foregroundStyle(.foreground)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))

        Text(colorToggle == .blue ? "Blue" : "Red")

        Button() {
            colorToggle = colorToggle == .red ? .blue : .red
        } label: {
            Text("Tap")
        }
        .padding()

        Spacer()
        
        Text("@State owns and can mutate the property")
            .font(.footnote)
    }
}

#Preview {
    StateView()
}
