//
//  StoreAppApp.swift
//  Shared
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

@main
struct StoreAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
