//
//  TabItem.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct TabItem: View {
    
    let model: Model
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: model.icon.rawValue)
                .font(.system(size: 16, weight: .semibold))
                .scaleEffect(isSelected ? 1.2 : 1.0)
            
            Text(model.title)
                .fontStyle(isSelected ? .tabSelected : .tab)
        }
        .foregroundStyle(isSelected ? .brigthOrange : .midBlue)
        .frame(maxWidth: .infinity)
        .animation(
            .spring(response: 0.3, dampingFraction: 0.7),
            value: isSelected
        )
    }
}

extension TabItem {

    struct Model {
        var title: String
        var icon: SFIconType
    }
}
