//
//  FreeApps.swift
//  27dec
//
//  Created by fedot on 27.12.2021.
//

import Foundation

// MARK: - FreeApps
struct FreeApps: Codable {
    let feed: Feed
}

// MARK: - Feed
struct Feed: Codable {
    let title: String
    let id: String
    let author: Author
    let copyright, country: String
    let icon: String
    let updated: String
    let results: [Result]
}

// MARK: - Author
struct Author: Codable {
    let name: String
    let url: String
}

// MARK: - Result
struct Result: Codable {
    let artistName, id, name, releaseDate: String
    let artworkUrl100: String
    let url: String
}

