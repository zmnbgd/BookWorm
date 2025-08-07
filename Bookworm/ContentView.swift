//
//  ContentView.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 5. 8. 2025..
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Query var students: [Student]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
