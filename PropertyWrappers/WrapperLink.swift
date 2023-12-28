//
//  WrapperLink.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 04/12/23.
//

import SwiftUI

struct WrapperLink: Identifiable {
    let id: Int
    let title: String

    @ViewBuilder
    static func viewToShow(for id: Int?) -> some View {
        switch id {
        case 1:
            StateView()
        case 2:
            StateBindingView()
        case 3:
            MultiViewStateBindingView()
        case 4:
            StateObjectView()
        case 5:
            UserListView()
        case 6:
            NestedViews()
        case 7:
            ProductListView()
        case 8:
            AppStorageView()
        case 9:
            SceneStorageView()
        default:
            Text("Select a data flow type from the list")
        }
    }
}

extension WrapperLink {
    static var wrapperLinks = [
        WrapperLink(id: 1, title: "State"),
        WrapperLink(id: 2, title: "Binding"),
        WrapperLink(id: 3, title: "Multi-View Binding"),
        WrapperLink(id: 4, title: "StateObject"),
        WrapperLink(id: 5, title: "ObservedObject"),
        WrapperLink(id: 6, title: "Environment"),
        WrapperLink(id: 7, title: "Observable-Bindable"),
        WrapperLink(id: 8, title: "AppStorage"),
        WrapperLink(id: 9, title: "SceneStorage")
    ]
}
