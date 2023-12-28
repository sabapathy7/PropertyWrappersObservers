//
//  Children1View.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/12/23.
//

import SwiftUI

struct Children1View: View {
    var body: some View {
        Text("Child View 1")
            .highlighterView(foregroundColor: .black, backgroundColor: .yellow)
    }
}

#Preview {
    Children1View()
}
