//
//  SceneStorageView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 04/12/23.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage(Constants.currentTime) var currentTime: Double?
    var body: some View {
        VStack {
            Text(Constants.sceneStorageTitle)
                .font(.title)
            Text(Constants.sceneStorageDesc)
                .font(.subheadline)
            Spacer()
            Text("Tapped on \(dateString)")
            Spacer()
            Text(Constants.sceneStorageUseCase)
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
            return Constants.never
        }
    }
}

#Preview {
    SceneStorageView()
}
