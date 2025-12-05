//
//  TabBarDefinition.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

protocol TabBarCreateModuleType {
    func createTabBarView() -> AnyView
}

protocol TabBarViewModelType: ObservableObject, AnyObject {
    var appTabs: [AppTabConfig] { get }
    var selectedTabIndex: Int { get }
    var selectedTabConfig: AppTabConfig? { get }
    
    func selectTab(at index: Int)
}

struct AppTabConfig {
    let id: AppTab
    let rootView: AnyView
}

enum AppTab: Equatable, Hashable {
    case weekly
    case habitList
    case overview
    
    var title: String {
        switch self {
        case .weekly:
            return "Weekly"
        case .habitList:
            return "Habit editor"
        case .overview:
            return "Overview"
        }
    }
    
    var iconName: SFIconType {
        switch self {
        case .weekly:
            return .weekly
        case .habitList:
            return .habitList
        case .overview:
            return .overview
        }
    }
}
