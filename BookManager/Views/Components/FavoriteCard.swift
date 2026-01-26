//
//  FavoriteCard.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/21/26.
//

import SwiftUI

struct FavoriteCard: View {
    let book: Book
    
    var body: some View {
        VStack{
            Text(book.title)
            Image(book.cover)
                .resizable()
                .scaledToFill()
                .frame(height:200)
            Text(book.author)
            
        }
        .border(Color.gray)
        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
        
    }
}
