//
//  AddEditView.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/12/26.
//

import SwiftUI

struct AddEditView: View {
    
    @Binding var book: Book
    @State var workingBook: Book
    @Environment(\.dismiss) var dismiss
    
    init(book: Binding<Book>) {
        _book = book
        _workingBook = .init(initialValue: book.wrappedValue)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Book details")){
                    TextField("Title of the book", text: $workingBook.title)
                    TextField("Author", text: $workingBook.author)
                    Picker("Genre", selection: $workingBook.genre) {
                        ForEach(Genre.allCases, id: \.self) { Genre in
                            Text(Genre.rawValue).tag(Genre)
                        }
                    }
                    Picker("Reading Status", selection: $workingBook.readingStatus) {
                        ForEach(ReadingStatus.allCases, id: \.self) { ReadingStatus in
                            Text(ReadingStatus.rawValue).tag(ReadingStatus)
                        }
                    }
                    TextEditor(text: $workingBook.details)
                        .frame(height: 150)
                }
                Section(header: Text("Book review")){
                   // Picker("Rating", selection: $workingBook.rating){
                        //Text("No rating selected").tag(0)
                      //  ForEach(1...5, id: \.self){
                         //   Text("\($0) stars").tag($0)
                      //  }
                   // }
                StarRatingField(rating: $workingBook.rating)
                    TextEditor(text: $workingBook.review)
                        .frame(height: 150)
                }
            }
            .navigationTitle("Add/Edit Book")
            .toolbar{
                ToolbarItem(placement:
                        .confirmationAction) {
                            Button("Save") {
                                book.title = workingBook.title
                                book.author = workingBook.author
                                book.details = workingBook.details
                                book.genre = workingBook.genre
                                book.readingStatus = workingBook.readingStatus
                                book.review = workingBook.review
                                book.rating = workingBook.rating
                                
                                dismiss()
                            }.disabled(workingBook.title.isEmpty)
                            
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
