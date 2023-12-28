//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 29/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedWrapperLinkId: Int?
    var body: some View {
        NavigationSplitView {
            SideBarView(selectedWrapperLinkId: $selectedWrapperLinkId)
        } detail: {
            WrapperLink.viewToShow(for: selectedWrapperLinkId)
        }
    }
}

#Preview {
    ContentView()
}
