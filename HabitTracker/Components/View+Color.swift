//
//  ColorScheme.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

extension Color {
    
    static let htContrast = Color("ContrastColor")
    static let htWhiteBlue = Color("WhiteBlue")
    static let htLightBlue = Color("LightBlue")
    static let htMidBlue = Color("MidBlue")
    static let htDarkBlue = Color("DarkBlue")
    static let htOrange = Color("BrigthOrange")
    static let htPositive = Color("StatisticGreen")
    static let htNegative = Color("StatisticRed")

    static let htHabitWine = Color("HabitWine")
    static let htHabitTeal = Color("HabitTeal")
    static let htHabitPurple = Color("HabitPurple")
    static let htHabitOlive = Color("HabitOlive")
    static let htHabitGreen = Color("HabitGreen")
    static let htHabitCoral = Color("HabitCoral")
    
}

extension HabitColor {
    var color: Color {
        switch self {
        case .wine: return .htHabitWine
        case .teal: return .htHabitTeal
        case .purple: return .htHabitPurple
        case .olive: return .htHabitOlive
        case .green: return .htHabitGreen
        case .coral: return .htHabitCoral
        }
    }
}
