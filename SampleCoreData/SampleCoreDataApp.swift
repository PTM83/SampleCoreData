//
//  SampleCoreDataApp.swift
//  SampleCoreData
//
//  Created by Pablo Andrés Torres Montes on 03-09-24.
//

import SwiftUI

@main
struct SampleCoreDataApp: App {
    
    // Para trabajar con Core Data hay que llamar la base de datos acá
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
