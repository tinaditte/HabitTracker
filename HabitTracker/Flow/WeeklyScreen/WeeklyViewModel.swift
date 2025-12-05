//
//  WeeklyViewModel.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import Foundation
import Combine

class WeeklyViewModel: WeeklyViewModelType {

    var date: Date?
    var completedHabitsToday: Int?
    var completeionRate: Double?
    var habits: [Habit] = []
    
    init(date: Date? = nil) {
        self.date = date
    }
        
}
