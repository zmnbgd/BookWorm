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
    @Query var books: [Book]
    
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
                                Text(book.author)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
                .navigationTitle("Bookworm")
                .navigationDestination(for: Book.self) { book in
                    DetailView(book: book)
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
}

#Preview {
    ContentView()
}
