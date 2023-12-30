//
//  Properties.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 04/12/23.
//

import SwiftUI

struct Properties: View {
    let stored = Constants.storedProp
    var body: some View {
        Text(stored)
            .font(.title)
            .padding()
            .navigationTitle(Constants.properties)
    }
}

#Preview {
    Properties()
}
