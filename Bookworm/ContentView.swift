//
//  ContentView.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 5. 8. 2025..
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    //@Query(sort: \Book.rating, order: .reverse) var books: [Book]
    @Query(sort: [
        SortDescriptor(\Book.title),
        SortDescriptor(\Book.title)
    ]) var books: [Book]
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack {
            //MARK: - Building a list with @Query -> Delete thit line of code after creatde EmojiRatingView
            //Text("Count \(books.count)")
            List {
                ForEach(books) { book in
                    NavigationLink(value: book) {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.title)
                            
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .font(.headline)
                                //MARK: - Challenge 2., Project 11: Modify ContentView so that books rated as 1 star are highlighted somehow, such as having their name shown in red.
                                    .foregroundStyle(book.rating == 1 ? .red : .primary)
                                Text(book.author)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteBooks)
            }
            .navigationTitle("Bookworm")
            .navigationDestination(for: Book.self) { book in
                DetailView(book: book)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add book", systemImage: "plus") {
                        showingAddScreen.toggle()
                    }
                }
            }
            .sheet(isPresented: $showingAddScreen) {
                AddBookView()
            }
        }
    }
    
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            let book = books[offset]
            modelContext.delete(book)
        }
    }
}

#Preview {
    ContentView()
}
