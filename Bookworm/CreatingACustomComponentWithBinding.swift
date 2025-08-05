//
//  CreatingACustomComponentWithBinding.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 5. 8. 2025..
//

import SwiftUI

//struct PushButton: View {
//    let title: String
////    @State var isOn: Bool
//    @Binding var isOn: Bool
//    
//    var onColor = [Color.red, Color.yellow]
//    var offColor = [Color(white: 0.6), Color(white: 0.4)]
//    
//    var body: some View {
//        Button(title) {
//            isOn.toggle()
//            
//        }
//        .padding()
//        .background(LinearGradient(colors: isOn ? onColor : offColor, startPoint: .top, endPoint: .bottom))
//        .foregroundStyle(.white)
//        .clipShape(.capsule)
//        .shadow(radius: isOn ? 0 : 5)
//    }
//}

struct CreatingACustomComponentWithBinding: View {

    @State private var rememberMe = false
    
    var body: some View {
        //Toggle("Remember me", isOn: $rememberMe)
        VStack {
            PushButton(title: "Remember me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}

#Preview {
    CreatingACustomComponentWithBinding()
}
