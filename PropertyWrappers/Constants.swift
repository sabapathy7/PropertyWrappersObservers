//
//  Constants.swift
//  PropertyWrappers
//
//  Created by kanagasabapathy on 25/12/23.
//

import Foundation

struct Constants {

    static let wrapperLinkState           = "State"
    static let wrapperLinkBinding         = "Binding"
    static let wrapperLinkMultiBinding    = "Multi-View Binding"
    static let wrapperLinkStateObject     = "StateObject"
    static let wrapperLinkObservedObject  = "ObservedObject"
    static let wrapperLinkEnvironment     = "Environment"
    static let wrapperLinkBindable        = "Observable-Bindable"
    static let wrapperLinkAppStorage      = "AppStorage"
    static let wrapperLinkSceneStorage    = "SceneStorage"

    static let productFile = "products.json"
    static let usersFile = "users.json"

    static let storedProp = "Stored Property"
    static let properties = "Properties"

    static let colorRed = "Red"
    static let colorGreen = "Green"
    static let colorBlue = "Blue"

    static let stateTitle = "@State"
    static let stateDesc = "Single source of truth for value types"
    static let stateUseCase = "@State owns and can mutate the property"

    static let stateObjectTitle = "@StateObject"
    static let stateObjectDesc = "Share state objects to subviews"
    static let stateObjectUse = "Single source of truth for Reference Types"
    static let stateObjectUseCase = "Bottom TextFields are editable"

    static let bindingTitle = "@State and @Binding"
    static let bindingDesc = "Reduce a single view using @State into the small views"
    static let bindingUse = "Pass to subview as a Binding ($) for two-way editing"
    static let bindingUseCase = "@State and @Binding to change a view from another view"

    static let multiBindingDesc = "With the value from Parent to achieve 2-way binding"

    static let observedObjectTitle = "@StateObject with @ObservedObject"
    static let observedObjectUse = """
                                     Single source of truth for Reference Types
                                     ObservedObject used to observe the changes from Published
                                    """
    static let bindableTitle = "@Bindable"
    static let bindableUse = """
                                     State - Dynamic Property in Observation Framework
                                     Bindable will observe the changes from ViewModel. @Published not required
                                    """

    static let bindableUseCase = "ListView fields are editable."
    static let appStorageTitle = "@AppStorage with @Binding"
    static let appStorageDesc = "Used to access UserDefaults from multiple views in a view hierarchy"
    static let appStorageUseCase = "@AppStorage to persistently store dark mode"
    static let sceneStorageTitle = "@SceneStorage"
    static let sceneStorageDesc = "Save data persistently for each scene"
    static let sceneStorageUseCase = "Tap to see the time change. Time saved persistently"

    static let editViewID = "ID:"
    static let editViewName = "Name"
    static let editViewEmail = "Email"
    static let editViewDOB = "DOB"
    static let editViewProfPic = "Profile Pic"

    static let editViewTitle = "Title"
    static let editViewDesc = "Description"
    static let editViewBrand = "brand"
    static let editViewImage = "Images"

    static let environment = "Environment"
    static let environmnetDesc = "A property wrapper that reads a value from a view’s environment"
    static let parentView = "Parent View"
    static let childView = "Child View 1"
    static let childView2 = "Child View 2"
    static let multiViewBinding = "Multi View Binding"
    static let product = "Product"
    static let bindableProduct = "Bindable - Product"
    static let darkMode = "Dark Mode"
    static let preferMode = "preferDark"
    static let currentTime = "currentTime"
    static let never = "Never"
    static let tap = "Tap"
}

extension Bundle {
    func decodeJSON<T: Decodable>(file: String) -> T {
        let data: Data
        var decodedData: T
        guard let file = Bundle.main.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't find \(file) in main bundle.")
        }
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(file) from main bundle:\n\(error)")
        }
        do {
            let decoder = JSONDecoder()
            decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            fatalError("Couldn't parse \(file) as \(T.self):\n\(error)")
        }
    }
}
