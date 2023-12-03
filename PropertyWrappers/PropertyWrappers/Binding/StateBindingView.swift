//
//  StateBindingView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/11/23.
//

import SwiftUI

struct StateBindingView: View {
    @State private var colorToggle: Color = .red
    var body: some View {
        Text("@State and @Binding")
            .font(.title)
        Text("Reduce a single view using @State into the small views")
            .font(.subheadline)

        Spacer()

        Text("Pass to subview as a Binding ($) for two-way editing")
            .font(.subheadline)
        Circle()
            .fill(colorToggle)
            .frame(width: 100)
            .foregroundStyle(.foreground)

        Text(colorToggle == .red ? "Red" : "Green")
            .foregroundStyle(colorToggle)              //  State

        StateBindingSubView(colorToggle: $colorToggle) //  Binding
            .padding()
        Spacer()

        Text("@State and @Binding to change a view from another view")
            .font(.footnote)
    }
}

struct StateBindingSubView: View {
    @Binding var colorToggle: Color
    var body: some View {
        VStack {
            Button() {
                colorToggle = colorToggle == .red ? .green : .red
            } label: {
                Text("Tap")
            }
        }
    }
}

#Preview {
    StateBindingView()
}
