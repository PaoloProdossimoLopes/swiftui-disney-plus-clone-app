//
//  GradientBackgroundView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient.init(
            colors: [ColorConstants.darkGrayColor, ColorConstants.darkBluishGrayColor],
            startPoint: .leading, endPoint: .trailing
        )
        .ignoresSafeArea(.all)
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
