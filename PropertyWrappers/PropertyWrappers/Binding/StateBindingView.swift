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
        Text(Constants.bindingTitle)
            .font(.title)
        Text(Constants.bindingDesc)
            .font(.subheadline)
        Spacer()
        Text(Constants.bindingUse)
            .font(.subheadline)
        Circle()
            .fill(colorToggle)
            .frame(width: 100)
            .foregroundStyle(.foreground)

        Text(colorToggle == .red ? Constants.colorRed : Constants.colorGreen)
            .foregroundStyle(colorToggle)              //  State

        StateBindingSubView(colorToggle: $colorToggle) //  Binding
            .padding()

        Spacer()
        Text(Constants.bindingUseCase)
            .font(.footnote)
    }
}

struct StateBindingSubView: View {
    @Binding var colorToggle: Color
    var body: some View {
        VStack {
            Button {
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
