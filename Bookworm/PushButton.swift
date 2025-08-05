//
//  PushButton.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 5. 8. 2025..
//

import SwiftUI

//struct PushButton: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    PushButton()
//}

struct PushButton: View {
    let title: String
//    @State var isOn: Bool
    @Binding var isOn: Bool
    
    var onColor = [Color.red, Color.yellow]
    var offColor = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
            
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColor : offColor, startPoint: .top, endPoint: .bottom))
        .foregroundStyle(.white)
        .clipShape(.capsule)
        .shadow(radius: isOn ? 0 : 5)
    }
}
