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
        Text(Constants.stateTitle)
            .font(.title)
        Text(Constants.stateDesc)
            .font(.subheadline)

        Spacer()

        Rectangle()
            .fill(colorToggle)
            .frame(width: 100, height: 100)
            .foregroundStyle(.foreground)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))

        Text(colorToggle == .blue ? Constants.colorBlue : Constants.colorRed)

        Button {
            colorToggle = colorToggle == .red ? .blue : .red
        } label: {
            Text(Constants.tap)
        }
        .padding()
        Spacer()
        Text(Constants.stateUseCase)
            .font(.footnote)
    }
}

#Preview {
    StateView()
}
