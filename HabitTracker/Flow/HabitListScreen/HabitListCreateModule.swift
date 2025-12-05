//
//  HabitListCreateModule.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct HabitListCreateModule: HabitListCreateModuleType {
    
    func createHabitListView() -> AnyView {
        let viewModel = HabitListViewModel()
        let view = HabitListView(viewModel: viewModel)

        return view.toAnyView()
    }
}
