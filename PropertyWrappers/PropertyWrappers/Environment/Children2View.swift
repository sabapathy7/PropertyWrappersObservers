//
//  Children2View.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/12/23.
//

import SwiftUI

struct Children2View: View {
    var body: some View {
        Text(Constants.childView2)
            .highlighterView(foregroundColor: .white, backgroundColor: .green)
    }
}

#Preview {
    Children2View()
}
