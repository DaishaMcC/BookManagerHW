//
//  api.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/19/26.
//

func getBooks() -> [Book] {
    return [
        Book(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", details: "The first book in the LOTR trilogy", cover: "lotr_fellowship", review: "Review number 1", rating: 4, genre: .horror),
            Book(title: "The Two Towers", author: "J.R.R. Tolkien", details: "The second book in the LOTR trilogy", cover: "lotr_towers"),
            Book(title: "The Return of the King", author: "J.R.R. Tolkien", details: "The final book in the LOTR trilogy", cover: "lotr_king"),
    ]
}
