//
//  Student.swift
//  Bookworm
//
//  Created by Marko Zivanovic on 7. 8. 2025..
//

import Foundation
import SwiftData

@Model

class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
    
}
