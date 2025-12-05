//
//  TabBarCreateModule.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct TabBarCreateModule: TabBarCreateModuleType {
    
    private let weeklyModule: WeeklyCreateModuleType
    private let habitListModule: HabitListCreateModuleType
    private let overviewModule: OverviewCreateModuleType
    
    init(
        weeklyModule: WeeklyCreateModuleType,
        habitListModule: HabitListCreateModuleType,
        overviewModule: OverviewCreateModuleType
    ) {
        self.weeklyModule = weeklyModule
        self.habitListModule = habitListModule
        self.overviewModule = overviewModule
    }

    func createTabBarView() -> AnyView {
        
        let appTabs: [AppTabConfig] = [
            AppTabConfig(
                id: .weekly,
                rootView: weeklyModule.createWeeklyView()
            ),
            AppTabConfig(
                id: .habitList,
                rootView: habitListModule.createHabitListView()
            ),
            AppTabConfig(
                id: .overview,
                rootView: overviewModule.createOverviewView()
            )
        ]
        
        let viewModel = TabBarViewModel(appTabs: appTabs)
        let view = TabBarView(viewModel: viewModel)

        return view.toAnyView()
    }
}

