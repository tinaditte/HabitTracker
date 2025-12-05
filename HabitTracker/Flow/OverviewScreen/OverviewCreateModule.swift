//
//  OverviewCreateModule.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct OverviewCreateModule: OverviewCreateModuleType {
    
    func createOverviewView() -> AnyView {
        let viewModel = OverviewViewModel()
        let view = OverviewView(viewModel: viewModel)

        return view.toAnyView()
    }
}
