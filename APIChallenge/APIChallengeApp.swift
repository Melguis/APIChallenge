//
//  APIChallengeApp.swift
//  APIChallenge
//
//  Created by Jorge Henrique on 18/06/23.
//

import SwiftUI

@main
struct APIChallengeApp: App {
    
        @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
