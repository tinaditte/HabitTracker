//
//  AppContainer.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

struct AppContainer {
    
    let weeklyModule: WeeklyCreateModuleType
    let habitModule: HabitListCreateModuleType
    let overviewModule: OverviewCreateModuleType
    let tabBarModule: TabBarCreateModuleType
    
    init() {
        
        let weeklyModule = WeeklyCreateModule()
        let habitModule = HabitListCreateModule()
        let overviewModule = OverviewCreateModule()
        
        self.weeklyModule = weeklyModule
        self.habitModule = habitModule
        self.overviewModule = overviewModule
        
        self.tabBarModule = TabBarCreateModule(
            weeklyModule: weeklyModule,
            habitListModule: habitModule,
            overviewModule: overviewModule
        )
    }
}
