//
//  ContentView.swift
//  StashProject
//
//  Created by Paul Chen on 12/4/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject var achievementListViewModel: AchievementListViewModel

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ScrollView {
                    VStack {
                        ForEach(achievementListViewModel.achievements, id: \.id) { achievement in
                            AchievementCardView(parentGeometry: geometry, achievement: achievement)
                                .padding(.vertical, 5)
                                .shadow(radius: 8, y: 8)
                        }
                    }
                }.navigationBarTitle(achievementListViewModel.title)
            }
        }
    }
}
