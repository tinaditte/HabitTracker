//
//  View+Font.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

extension Font {
    static func screenTitleFont() -> Font {
        .custom("LaBelleAurore", size: 32)
    }
    
    static func titleLarge() -> Font {
        .custom("Hind-SemiBold", size: 20)
    }
    
    static func titelSmallBold() -> Font {
        .custom("Hind-SemiBold", size: 16)
    }
    
    static func titelSmall() -> Font {
        .custom("Hind-Regular", size: 16)
    }
    
    static func componentRegular() -> Font {
        .custom("Hind-Regular", size: 12)
    }
    
    static func componentBold() -> Font {
        .custom("Hind-SemiBold", size: 12)
    }
    
    static func statisticNumber() -> Font {
        .custom("Hind-Regular", size: 32)
    }
    
    static func notation() -> Font {
        .custom("Hind-Regular", size: 10)
    }
    
    static func button() -> Font {
        .custom("Hind-Medium", size: 20)
    }
}
