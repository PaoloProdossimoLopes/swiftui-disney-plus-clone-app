//
//  ContentView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 08/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: -10) {
                getTabPages()
                getTabIcons(geo: geo)
            }
        }.edgesIgnoringSafeArea(.all)
    }
    
    private func getTabPages() -> some View {
        switch tabViewRouter.currentPage {
        case .home:
            return AnyView(HomePageView().frame(width: UIScreen.main.bounds.width))
        case .search:
            return AnyView(SearchPageView())
        case .downloads:
            return AnyView(DownloadPageView())
        case .profile:
            return AnyView(ProfilePageView())
        }
    }
    
    private func getTabIcons(geo: GeometryProxy) -> some View {
        let width = geo.size.width / 4
        let height = geo.size.height / 56
        
        return HStack {
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .home, height: height, width: width, systemIconName: "house", tabName: "Home")
            
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .search, height: height, width: width, systemIconName: "magnifyingglass", tabName: "Search")
            
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .downloads, height: height, width: width, systemIconName: "square.and.arrow.down.fill", tabName: "Downloads")
            
            TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .profile, height: height, width: width, systemIconName: "person.circle", tabName: "Profile")
        }
        .frame(width: geo.size.width, height: 60)
        .padding(.bottom, 20)
        .background(ColorConstants.darkBluishGrayColor.shadow(radius: 2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: .init())
    }
}
