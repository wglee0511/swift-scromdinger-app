//
//  SwiftScromdingerApp.swift
//  SwiftScromdinger
//
//  Created by racoon on 2024/01/30.
//

import SwiftUI

@main
struct SwiftScromdingerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
