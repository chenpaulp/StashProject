//
//  Service.swift
//  StashProject
//
//  Created by Paul Chen on 12/7/20.
//

import Foundation

enum StashEndpoint {
    case achievements

    var url: URL? {
        switch self {
        case .achievements:
            guard let url = Bundle.main.url(forResource: "achievements", withExtension: "json") else {
                print("Invalid URL format")
                return .none
            }
            return url
        }
    }
}

class Service {
    func getAchievements(completion: (Stash) -> Void) {
        guard let url = StashEndpoint.achievements.url else {
            return
        }

        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let stash = try decoder.decode(Stash.self, from: data)
            completion(stash)
        } catch {
            print("getAchievements error: \(error)")
        }
    }
}
