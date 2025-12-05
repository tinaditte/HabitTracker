//
//  HabitTrackerApp.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 04/12/2025.
//

import SwiftUI
import SwiftData

@main
struct HabitTrackerApp: App {

    private let container = AppContainer()
    
    var body: some Scene {
        WindowGroup {
            container.tabBarModule.createTabBarView()
        }
    }
}
