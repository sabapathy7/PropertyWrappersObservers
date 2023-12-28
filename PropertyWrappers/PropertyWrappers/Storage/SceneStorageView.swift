//
//  SceneStorageView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 04/12/23.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("currentTime") var currentTime: Double?
    var body: some View {
        VStack {
            Text("@SceneStorage")
                .font(.title)
            Text("Save data persistently for each scene")
                .font(.subheadline)
            Spacer()
            Text("Tapped on \(dateString)")
            Spacer()
            Text("Tap to see the time change. Time saved persistently")
                .font(.footnote)
        }
        .onTapGesture {
            currentTime = Date().timeIntervalSince1970
        }
    }
    var dateString: String {
        if let currentTimeStamp = currentTime {
            return Date(timeIntervalSince1970: currentTimeStamp).formatted()
        } else {
            return "Never"
        }
    }
}

#Preview {
    SceneStorageView()
}
