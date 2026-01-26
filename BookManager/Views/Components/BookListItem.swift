//
//  BookListItem.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/24/26.
//

import SwiftUI

struct BookListItem: View {
    let book: Book
    
    var body: some View {
        HStack {
            Image(book.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Text(book.title)
                
        }
        
    }
}
