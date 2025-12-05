//
//  AppTab.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct AppTabView: View {
    
    let model: Model
    
    var body: some View {
        VStack(spacing: 0) {
            Image(model.icon)
                .font(.system(size: 20))
                .foregroundStyle(.midBlue)

            Text(model.title)
                .fontStyle(.tab)
        }
    }
}

extension AppTabView {
    struct Model {
        let icon: SFIconType
        let title: String
        
        init(icon: SFIconType, title: String) {
            self.icon = icon
            self.title = title
        }
    }
}

#Preview {
    AppTabView(model: .init(icon: .weekly, title: "Weekly"))
}

