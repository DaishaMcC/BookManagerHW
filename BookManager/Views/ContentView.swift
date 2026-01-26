//
//  ContentView.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/7/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var books = getBooks()
    @State var showAddSheet: Bool = false
    
    @State var newBook: Book = Book(title:"")
    
    var body: some View {
        NavigationStack {
            List($books, id: \.self.id){ $book in
                NavigationLink(destination: BookDetailView(book: $book)) {
                    
                    BookListItem(book: book)
                }
            }
            .navigationTitle(Text("Book Manager"))
            .navigationBarItems(trailing: Button("Add"){
                    showAddSheet.toggle()
            })
            .sheet(isPresented: $showAddSheet)
            {//on dismiss
                if(!newBook.title.isEmpty){
                    books.append(newBook)
                }
                newBook = Book(title: "")
            }
            content:{
                AddEditView(book: $newBook)
            }
        }
        
   
    }
}

#Preview {
    ContentView()
}
