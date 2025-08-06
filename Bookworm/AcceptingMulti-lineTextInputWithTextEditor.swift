//
//  AcceptingMulti-lineTextInputWithTextEditor.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 6. 8. 2025..
//

import SwiftUI

struct AcceptingMulti_lineTextInputWithTextEditor: View {
    
    @AppStorage("notes") private var notes = ""
    
//    var body: some View {
//        NavigationStack {
//            TextEditor(text: $notes)
//                .navigationTitle("Notes")
//                .padding()
//        }
//    }
    
    
    var body: some View {
        NavigationStack {
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    AcceptingMulti_lineTextInputWithTextEditor()
}
