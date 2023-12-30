//
//  NumberChooser.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 02/12/23.
//

import SwiftUI

struct NumberChooser: View {
    @Binding var counterValue: Int
    var body: some View {
        Text(Constants.multiBindingDesc)
            .font(.subheadline)
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .fill(Color.secondary.opacity(0.1))
                .frame(width: 300)
            VStack {
                Stepper(value: $counterValue, in: 0...50) {
                    Text("Value in Child View = \(counterValue)")
                        .font(.caption2)
                        .bold()
                }
                .padding(50)
                NumberBlockView(stepperValue: counterValue)
            }

        }
        .padding()
        .navigationTitle(Constants.multiViewBinding)
    }
}

#Preview {
    NumberChooser(counterValue: .constant(5))
}
