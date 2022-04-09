//
//  Profile.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 09/04/22.
//

import Foundation
import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    
    let name: String
    let avatar: String
    let backColor: Color
}

extension Profile {
    static var sampleProfiles: [Profile] {
        return [
            Profile(name: "Tiger", avatar: "🐯", backColor: .pink),
            Profile(name: "Mouse", avatar: "🐭", backColor: .purple),
            Profile(name: "Dog", avatar: "🐶", backColor: .green),
            Profile(name: "Panda", avatar: "🐼", backColor: .orange),
            Profile(name: "Monkey", avatar: "🐵", backColor: .red),
            Profile(name: "Hamster", avatar: "🐹", backColor: .blue)
        ]
    }
}
