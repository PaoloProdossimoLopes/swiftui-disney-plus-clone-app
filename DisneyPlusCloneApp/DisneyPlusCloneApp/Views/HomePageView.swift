//
//  HomePageView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 08/04/22.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            
            ScrollView {
                LogoHeaderView()
                    .frame(maxWidth: 100)
                    .padding(.top, 10)
                
                CarrousselView()
                ChanelView()
                    .frame(width: UIScreen.main.bounds.width)
                
                ForEach(MovieSection.movieSections) {
                    MovieSectionView(movieSection: $0)
                        .frame(width: UIScreen.main.bounds.width)
                }
                
                Spacer()
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
