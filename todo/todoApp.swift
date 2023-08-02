//
//  todoApp.swift
//  todo
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

@main
struct todoApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)        }
    }
}
