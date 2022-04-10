//
//  SquareButton.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

struct SquareButton: View {
    
    let category: SearchCategory
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: category.systemImage)
            Text(category.title)
        }
        .padding()
        .frame(width: 100, height: 100)
        .foregroundColor(.white)
        .background(ColorConstants.darkBluishGrayColor)
        .cornerRadius(10)
        .applyShaddow(color: ColorConstants.darkGrayColor, radious: 5)
    }
}

struct SquareButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            SquareButton(category: .init(title: "Original", systemImage: "star.fill"))
        }
    }
}
