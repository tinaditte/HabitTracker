//
//  TabBarView.swift
//  HabitTracker
//
//  Created by Tina Thomsen on 05/12/2025.
//

import SwiftUI

struct TabBarView<ViewModel: TabBarViewModelType>: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            viewModel.selectedTabConfig?.rootView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    LinearGradient(
                        gradient: Gradient(colors: [.contrast, .whiteBlue]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }
                .ignoresSafeArea()
            
            HStack {
                ForEach(viewModel.appTabs.enumerated(), id: \.element.id) { index, tab in
                    Button {
                        withAnimation {
                            viewModel.selectTab(at: index)
                        }
                    } label: {
                        TabItem(
                            model: .init(
                                title: tab.id.title,
                                icon: tab.id.iconName
                            ),
                            isSelected: viewModel.selectedTabIndex == index
                        )
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 24)

                }
            }
            .background(
                Color
                    .whiteBlue
                    .clipShape(.rect(cornerRadii: .init(topLeading: 20, topTrailing: 20)))
                    .shadow(radius: 4, y: -2)
            )
            .ignoresSafeArea(edges: .bottom)
        }
        .ignoresSafeArea()
    }
}

#Preview {

    TabBarView(viewModel: MockTabBarViewModel())
}
