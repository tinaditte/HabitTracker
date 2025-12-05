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
    
    var appTabs: [AppTabConfig] = [
        .init(
            id: .weekly,
            rootView: Text("WEEKLY TAB")
                .fontStyle(.largeTitleDark)
                .toAnyView()
        ),
        .init(
            id: .habitList,
            rootView: Text("HABIT LIST TAB")
                .fontStyle(.largeTitleDark)
                .toAnyView()
        ),
        .init(
            id: .overview,
            rootView: Text("OVERVIEW TAB")
                .fontStyle(.largeTitleDark)
                .toAnyView()
        )
    ]
    
    var selectedTabIndex = 0
    var selectedTabConfig: AppTabConfig?
    
    func selectTab(at index: Int) {
        guard appTabs.indices.contains(index) else { return }

        selectedTabIndex = index
        selectedTabConfig = appTabs[index]
    }
}
