//
//  HabitCompletion.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import Foundation

struct HabitCompletion: Identifiable, Codable, Hashable {
    let id: UUID
    let habitId: UUID
    let date: Date
}
