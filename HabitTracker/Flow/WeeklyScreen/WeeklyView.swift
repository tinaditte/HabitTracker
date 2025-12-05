//
//  WeeklyView.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct WeeklyView<ViewModel: WeeklyViewModelType>: View {

    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        
        Text("WEEKLY!!!!!")
    }
}
