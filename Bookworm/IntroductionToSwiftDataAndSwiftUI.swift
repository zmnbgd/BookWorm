//
//  IntroductionToSwiftDataAndSwiftUI.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 7. 8. 2025..
//

import SwiftData
import SwiftUI

struct IntroductionToSwiftDataAndSwiftUI: View {
    @Environment(\.modelContext) var modelContext
    @Query var studens: [Student]
    
    var body: some View {
        NavigationStack {
            List(studens) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Marko", "Ana", "Milan", "Luka", "Mila"]
                    let lastNames = ["Zivanovic", "Jankovic", "Milic", "Savic", "Vukovic"]
                    
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    //MARK: - More code to come here
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    IntroductionToSwiftDataAndSwiftUI()
}
