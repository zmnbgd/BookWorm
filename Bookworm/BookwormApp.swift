//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 5. 8. 2025..
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Student.self)
    }
}
