//
//  TabBarViewModel.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import Foundation
import Combine

class TabBarViewModel: TabBarViewModelType {
    
    @Published var selectedTabIndex: Int = 0
    @Published var selectedTabConfig: AppTabConfig?

    var appTabs: [AppTabConfig]
    var selectedTab: AppTabConfig?
    
    init(appTabs: [AppTabConfig]) {
        self.appTabs = appTabs
        
        if let firstTab = appTabs.first {
            selectedTabIndex = 0
            selectedTabConfig = firstTab
        }
    }
    
    func selectTab(at index: Int) {
        guard appTabs.indices.contains(index) else { return }

        selectedTabIndex = index
        selectedTabConfig = appTabs[index]
    }
}
