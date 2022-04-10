//
//  View+Extensions.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

extension View {
    func applyShaddow(color: Color, radious: CGFloat) -> some View {
        return self
            .shadow(color: color, radius: radious, x: radious, y: radious)
            .shadow(color: color, radius: radious, x: -radious, y: -radious)
    }
}
