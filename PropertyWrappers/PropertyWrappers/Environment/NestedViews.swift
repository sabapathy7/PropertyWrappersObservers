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
            ParentView()
                .environment(\.colorScheme, .dark)
                .padding()

            ParentView()
                .environment(\.colorScheme, .light)
                .padding()
        }
    }
}

#Preview {
    NestedViews()
}
