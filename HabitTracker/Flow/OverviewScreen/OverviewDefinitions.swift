//
//  OverviewDefinitions.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

protocol OverviewCreateModuleType {
    func createOverviewView() -> AnyView
}

protocol OverviewViewModelType: ObservableObject, AnyObject {
    
}

protocol OverviewRouterType: AnyObject {
    
}
