//
//  View+Image.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

extension Image {
    init(_ icon: SFIconType) {
        self.init(systemName: icon.rawValue)
    }
}
