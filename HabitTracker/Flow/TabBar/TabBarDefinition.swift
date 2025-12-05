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
    var appTabs: [AppTabs] { get }
    var selectedTab: AppTabs { get set }
    
    func selectTab(_ tab: AppTabs)
}

protocol TabBarRouterType: AnyObject {
    func navigate(to tab: AppTabs)
}

enum AppTabs: Equatable, Hashable {    
    case weekly
    case create
    case overview
    
    var title: String {
        switch self {
        case .weekly:
            return "Weekly"
        case .create:
            return "Habit editor"
        case .overview:
            return "Overview"
        }
    }
    
    var iconName: SFIconType {
        switch self {
        case .weekly:
            return .weekly
        case .create:
            return .habitList
        case .overview:
            return .overview
        }
    }
}
