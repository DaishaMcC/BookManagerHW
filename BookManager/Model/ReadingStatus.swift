//
//  ReadingStatus.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/25/26.
//

enum ReadingStatus: String, Codable, CaseIterable {
    case wantToRead = "want to read"
    case reading = "reading"
    case dropped = "dropped"
    case finished = "finished"
    
    case unknown = "unknown"
    
}
