//
//  View+FontStyle.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct FontStyler: ViewModifier {
    
    let style: FontStyle
    
    func body(content: Content) -> some View {
        switch style {
        case .screenTitle:
            return content
                .font(.screenTitleFont())
                .foregroundStyle(.whiteBlue)

        case .largeTitleDark:
            return content
                .font(.titleLarge())
                .foregroundStyle(.darkBlue)

        case .smallTitleDark:
            return content
                .font(.titelSmall())
                .foregroundStyle(.darkBlue)

        case .smallTitleOrange:
            return content
                .font(.titelSmall())
                .foregroundStyle(.brigthOrange)

        case .smallTitleDarkBold:
            return content
                .font(.titelSmallBold())
                .foregroundStyle(.darkBlue)

        case .regularDark:
            return content
                .font(.componentRegular())
                .foregroundStyle(.darkBlue)
            
        case .tab:
            return content
                .font(.componentBold())
                .foregroundStyle(.midBlue)
            
        case .tabSelected:
            return content
                .font(.componentBold())
                .foregroundStyle(.brigthOrange)

        case .tinyNoteDark:
            return content
                .font(.notation())
                .foregroundStyle(.darkBlue)
            
        case .buttonDark:
            return content
                .font(.button())
                .foregroundStyle(.darkBlue)

        case .statisticPositive:
            return content
                .font(.statisticNumber())
                .foregroundStyle(.statisticGreen)

        case .statisticNegative:
            return content
                .font(.statisticNumber())
                .foregroundStyle(.statisticRed)

        }
    }
    
}

enum FontStyle {
    case screenTitle
    case largeTitleDark
    case smallTitleDark
    case smallTitleOrange
    case smallTitleDarkBold
    case regularDark
    case tab
    case tabSelected
    case tinyNoteDark
    case buttonDark
    case statisticPositive
    case statisticNegative
}
