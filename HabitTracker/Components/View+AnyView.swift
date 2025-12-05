//
//  View+AnyView.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
