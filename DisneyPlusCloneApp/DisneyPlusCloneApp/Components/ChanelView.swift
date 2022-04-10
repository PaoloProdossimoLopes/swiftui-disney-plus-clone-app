//
//  ChanelView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

struct ChanelView: View {
    
    private let chanels = Chanel.allCases
    
    var body: some View {
        HStack {
            ForEach(chanels, id: \.self) { chanel in
                makeBanner(chanel)
            }
        }
        .padding()
    }
    
    private func makeBanner(_ chanel: Chanel) -> some View {
        Button(
            action: {},
            label: {
                Image(chanel.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        ).background(LinearGradient(gradient: .init(colors: [ColorConstants.darkBluishGrayColor, ColorConstants.darkGrayColor]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(5)
        .overlay(RoundedRectangle.init(cornerRadius: 5).stroke(Color.gray))
    }
}

struct ChanelView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ChanelView()
        }
    }
}
