//
//  Genre.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/24/26.


enum Genre: String, Codable, CaseIterable {
    case classic = "Classic"
    case fantasy = "Fantasy"
    case scienceFiction = "Science Fiction"
    case horror = "Horror"
    
    case unknown = "Unknown"
}
