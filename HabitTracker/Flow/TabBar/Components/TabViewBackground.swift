//
//  TabViewBackground.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 09/12/2025.
//

import SwiftUI


struct AppTabRootViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.contrast, .contrast, .whiteBlue]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
            )
            .ignoresSafeArea()
    }
}

extension View {
    func appTabRootViewBackground() -> some View {
        self.modifier(AppTabRootViewModifier())
    }
}
