//
//  MockTabBarViewModel.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import Foundation
import SwiftUI
import Combine

class MockTabBarViewModel: TabBarViewModelType {

    @Published var selectedTabIndex = 0
    @Published var selectedTabConfig: AppTabConfig?
    
    var appTabs: [AppTabConfig] = [
        .init(
            id: .weekly,
            rootView: Text("WEEKLY TAB")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .fontStyle(.largeTitleDark)
                .toAnyView()
        ),
        .init(
            id: .habitList,
            rootView: Text("HABIT LIST TAB")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .fontStyle(.largeTitleDark)
                .toAnyView()
        ),
        .init(
            id: .overview,
            rootView: Text("OVERVIEW TAB")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .fontStyle(.largeTitleDark)
                .toAnyView()
        )
    ]
    
    init() {        
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

