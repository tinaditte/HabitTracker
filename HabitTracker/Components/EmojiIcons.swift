//
//  EmojiIcons.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

enum Emojicon: String {
    case fire = "🔥"
    case longestStreak = "🏅"
    case total = "🎉"
}

struct EmojiIconView: View {
    let icon: Emojicon
    
    var body: some View {
        Text(icon.rawValue)
            .frame(width: 16, height: 16)
    }
}

#Preview {
    VStack {
        HStack {
            Text("Current streak")
                .fontStyle(.regularDark)

            Spacer ()

            HStack {
                Text("X days")
                    .fontStyle(.regularDark)

                EmojiIconView(icon: .longestStreak)
            }
        }
    }
    .frame(width: 200, height: 60)
}
