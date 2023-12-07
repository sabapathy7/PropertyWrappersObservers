//
//  StateObjectView.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 02/12/23.
//

import SwiftUI

final class User: ObservableObject {
    @Published var firstName: String  = "Saba"
    @Published var lastName: String   = "Pathy"
    @Published var age: Int           = 33
    @Published var email: String      = "sabapathy7@medium.com"

}

struct StateObjectView: View {
    @StateObject private var model = User()
    var body: some View {
        VStack {
            Text("@StateObject").font(.title)
            Text("Share state objects to subviews").font(.subheadline)
            Spacer()

            Text("Single source of truth for Reference Types").font(.caption).bold()
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.yellow)
                    .frame(height: 250)
                VStack {
                    Text("First Name: \(model.firstName)")
                    Text("Last Name: \(model.lastName)")
                    Text("Age: \(String(model.age))")
                    Text("Email: \(model.email)")
                }
                .bold()
                .foregroundStyle(.black)
                .padding()
            }
            
            Spacer()

            VStack(alignment: .leading) {
                TextField("First Name", text: $model.firstName)
                TextField("Last Name", text: $model.lastName)
                TextField("Jumlah Barang", value: $model.age, format: .number)
                TextField("Email", text: $model.email)
            }
            .bold()
            Spacer()

            Text("Bottom TextFields are editable").font(.footnote)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

#Preview {
    StateObjectView()
}
