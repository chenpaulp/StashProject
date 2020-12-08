//
//  StashProjectApp.swift
//  StashProject
//
//  Created by Paul Chen on 12/4/20.
//

import SwiftUI

class AppViewModel: NSObject, ObservableObject {
    let achievementListViewModel = AchievementListViewModel(service: Service())
}

@main
struct StashProjectApp: App {
    let appViewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(achievementListViewModel: appViewModel.achievementListViewModel)
        }
    }
}
