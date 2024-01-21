//
//  SwiftDataLearningApp.swift
//  SwiftDataLearning
//
//  Created by Saransh Dubey on 28/11/23.
//

import SwiftUI
import SwiftData
@main
struct SwiftDataLearningApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Video.self)
    }
}
