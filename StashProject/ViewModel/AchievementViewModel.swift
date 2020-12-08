//
//  AchievementViewModel.swift
//  StashProject
//
//  Created by Paul Chen on 12/4/20.
//

import Foundation

class AchievementViewModel: ObservableObject {
    @Published var achievement: Achievement

    init(achievement: Achievement) {
        self.achievement = achievement
    }

    var id: Int {
        return self.achievement.id
    }

    var level: String {
        return self.achievement.level
    }

    var progress: Int {
        return self.achievement.progress
    }

    var total: Int {
        return self.achievement.total
    }

    var bgImageUrl: String {
        return self.achievement.bgImageUrl
    }

    var accessible: Bool {
        return self.achievement.accessible
    }
}
