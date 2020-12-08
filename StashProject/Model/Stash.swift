//
//  Stash.swift
//  StashProject
//
//  Created by Paul Chen on 12/4/20.
//

import Foundation

struct Stash: Codable {
    let overview: Overview
    let achievements: [Achievement]
}

struct Overview: Codable {
    var title: String
}

struct Achievement: Codable {
    let id: Int
    let level: String
    let progress: Int
    let total: Int
    let bgImageUrl: String
    let accessible: Bool
}
