//
//  WeeklyCreateModule.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct WeeklyCreateModule: WeeklyCreateModuleType {

    func createWeeklyView() -> AnyView {
        let viewModel = WeeklyViewModel()
        let view = WeeklyView(viewModel: viewModel)
        
        return view.toAnyView()
    }
}
