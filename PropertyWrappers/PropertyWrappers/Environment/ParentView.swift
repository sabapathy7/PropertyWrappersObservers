//
//  ParentView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/12/23.
//

import SwiftUI

struct ParentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Text("Parent View")
            .font(.title)
            .foregroundStyle(.brown)
            .bold()
        ZStack {
            Children1View()

            Children2View()
                .offset(y: colorScheme == .dark ? 40 : 0)
        }
        .background(colorScheme == .dark ? Color.gray : Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ParentView()
}
