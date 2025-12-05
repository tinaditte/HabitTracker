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
    var date: Date? { get set }
    var completedHabitsToday: Int? { get }
    var completeionRate: Double? { get }
    var habits: [Habit] { get set }
}

protocol WeeklyRouterType: AnyObject {
    
}

struct HabitWeekStatus {
    let habit: Habit
    let days: [DayStatus]
}

struct DayStatus {
    let date: Date
    let isCompleted: Bool
}
