//
//  NestedViews.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/12/23.
//

import SwiftUI

struct NestedViews: View {
    var body: some View {
        VStack {
            Text(Constants.environment)
                .font(.title)
                .bold()
            Text(Constants.environmnetDesc)
                .font(.caption)
            Spacer()
            ParentView()
                .environment(\.colorScheme, .dark)
                .padding()

            ParentView()
                .environment(\.colorScheme, .light)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    NestedViews()
}
