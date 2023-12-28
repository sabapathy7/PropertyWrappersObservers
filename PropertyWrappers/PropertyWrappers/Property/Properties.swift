//
//  Properties.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 04/12/23.
//

import SwiftUI

struct Properties: View {
    let stored = "Stored Property"
    var body: some View {
        Text(stored)
            .font(.title)
            .padding()
            .navigationTitle("Properties")
    }
}

#Preview {
    Properties()
}
