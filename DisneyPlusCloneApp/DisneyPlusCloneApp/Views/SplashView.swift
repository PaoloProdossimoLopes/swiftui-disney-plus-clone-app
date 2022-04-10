//
//  SplashView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 09/04/22.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            VStack {
                if isActive {
                    ContentView(tabViewRouter: .init())
                } else {
                    SplashAnimationView()
                        .frame(width: 300, height: 300)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation { isActive.toggle() }
                }
            }
        }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
