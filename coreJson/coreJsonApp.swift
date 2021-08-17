//
//  coreJsonApp.swift
//  coreJson
//
//  Created by Jaskirat Mangat on 2021-08-05.
//

import SwiftUI

@main
struct coreJsonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
