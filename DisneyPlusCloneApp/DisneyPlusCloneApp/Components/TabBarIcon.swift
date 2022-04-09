//
//  TabBarIcon.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 08/04/22.
//

import SwiftUI

struct TabBarIcon: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    
    let currentPage: Page
    let height: CGFloat
    let width: CGFloat
    let systemIconName: String
    let tabName: String
    
    private var isCurrentTab: Bool { tabViewRouter.currentPage == currentPage }
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            
            Text(tabName)
                .font(.footnote)
        }
        .foregroundColor(isCurrentTab ? .white : .gray)
        .padding(.horizontal, -4)
        .onTapGesture { tabViewRouter.currentPage = currentPage }
    }
}
