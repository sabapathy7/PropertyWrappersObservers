//
//  NumberBlockView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 02/12/23.
//

import SwiftUI

struct NumberBlockView: View {
    let stepperValue: Int
    var body: some View {
        Image(systemName: "\(stepperValue).circle")
            .font(.system(size: 100))
            .foregroundStyle(.blue)
            .padding()
    }
}

#Preview {
    NumberBlockView(stepperValue: 7)
}
