//
//  DownloadPageView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 08/04/22.
//

import SwiftUI

struct DownloadPageView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Image(systemName: "square.and.arrow.down.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                    .padding()
                    .background(Circle().stroke(.gray, lineWidth: 4))
                
                Text("You have no downloads")
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Text("Movie and serie you download will \nappear here.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DownloadPageView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadPageView()
    }
}
