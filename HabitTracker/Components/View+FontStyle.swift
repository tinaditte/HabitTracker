//
//  View+Fontstyle.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

extension View {
    func fontStyle(_ style: FontStyle) -> some View {
        self.modifier(FontStyler(style: style))
    }
}
