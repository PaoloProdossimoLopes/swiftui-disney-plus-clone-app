//
//  LogoHeaderView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            GradientBackgroundView()
            LogoHeaderView()
        }
    }
}
