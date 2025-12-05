//
//  Habit.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import Foundation

struct Habit: Identifiable, Codable, Hashable {
    
    let id: UUID
    var title: String
    var createdAt: Date
    var isActive: Bool
    var emojocon: String
    var colorCode: String

}

enum HabitColor: String, Codable, CaseIterable {
    case wine = "HabitWine"
    case teal = "HabitTeal"
    case purple = "HabitPurple"
    case olive = "HabitOlive"
    case green = "HabitGreen"
    case coral = "HabitCoral"
}
