//
//  TabBarViewModel.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import Foundation
import Combine

class TabBarViewModel: TabBarViewModelType {
    
    @Published var selectedTab: AppTabs

    var appTabs: [AppTabs]
    
    init(appTabs: [AppTabs], selectedTab: AppTabs) {
        self.appTabs = appTabs
        self.selectedTab = selectedTab
    }
    
    func selectTab(_ tab: AppTabs) {
        selectedTab = tab
    }
}
