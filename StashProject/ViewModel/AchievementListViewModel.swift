//
//  AchievementListViewModel.swift
//  StashProject
//
//  Created by Paul Chen on 12/4/20.
//

import Foundation

class AchievementListViewModel: ObservableObject {
    private let service: Service
    @Published var title = String()
    @Published var achievements = [AchievementViewModel]()
    
    init(service: Service) {
        self.service = service
        self.service.getAchievements { stash in
            self.title = stash.overview.title
            self.achievements = stash.achievements.map(AchievementViewModel.init)
        }
    }
}
