//
//  BookDetailView.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/7/26.
//

import SwiftUI

struct BookDetailView: View {
    @Binding var book: Book
    
    @State var showEditSheet: Bool = false
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    
                    Image(book.cover)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .padding(.vertical,20)
                        


                    VStack{
                        Text(book.title)
                            .font(.largeTitle)
                        
                        Text("by \(book.author)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        
                        HStack{
                            CustomCapsule(text: book.genre.rawValue)
                            CustomCapsule(text: book.readingStatus.rawValue, color: .red)
                        }
                    }
                }
                
                Text(book.details)
                Text("Review")
                    .font(.title2)
                    .padding(.vertical)
                Text("\(book.rating) \(book.rating == 1 ? "star" : "stars")")
                Text(book.review)
                    
            }
            
        }
        .navigationBarItems(trailing: Button("Edit"){
            showEditSheet.toggle()
        })
        .sheet(isPresented: $showEditSheet) {
            AddEditView(book: $book)
        }
    }
}
