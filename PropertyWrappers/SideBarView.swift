//
//  SideBarView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 04/12/23.
//

import SwiftUI

struct SideBarView: View {
    @Binding var selectedWrapperLinkId: Int?
    var body: some View {
        List(WrapperLink.wrapperLinks, selection: $selectedWrapperLinkId) { link in
            ListRowView(title: link.title, imageNumber: link.id)
                .tag(link.id)
        }
        .frame(minWidth: 50)
    }
}

#Preview {
    SideBarView(selectedWrapperLinkId: .constant(1))
        .frame(width: 50)
}

struct ListRowView: View {
    let title: String
    let imageNumber: Int
    var body: some View {
        HStack {
            Image(systemName: "\(imageNumber).circle.fill")
                .padding(6)
                .font(.largeTitle)
            Text(title)
                .font(.headline)
        }
    }
}
