//
//  WeeklyDefinitions.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

protocol WeeklyCreateModuleType {
    func createWeeklyView() -> AnyView
}

protocol WeeklyViewModelType: ObservableObject, AnyObject {
    
}

protocol WeeklyRouterType: AnyObject {
    
}
