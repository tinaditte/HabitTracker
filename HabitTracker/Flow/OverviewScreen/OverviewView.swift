//
//  OverviewView.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct OverviewView<ViewModel: OverviewViewModelType>: View {

    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        
        Text("OVERVIEW!!!!!")
        
    }
}
