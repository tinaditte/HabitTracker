//
//  HabitListDefinitions.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

protocol HabitListCreateModuleType {
    func createHabitListView() -> AnyView
}

protocol HabitListViewModelType: ObservableObject, AnyObject {
    
}

protocol HabitListRouterType: AnyObject {
    
}
