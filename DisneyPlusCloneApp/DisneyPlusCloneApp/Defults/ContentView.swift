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
                VStack {
                    getTabPages()
                    Spacer()
                    getTabIcons(geo: geo)
                }
            }
        }
    }
    
    private func getTabPages() -> some View {
        var anyView: AnyView
        
        switch tabViewRouter.currentPage {
        case .home:
            anyView = AnyView(HomePageView())
        case .search:
            anyView =  AnyView(SearchPageView())
        case .downloads:
            anyView = AnyView(DownloadPageView())
        case .profile:
            anyView = AnyView(ProfilePageView())
        }
        
        return anyView
    }
    
    private func getTabIcons(geo: GeometryProxy) -> some View {
        let numberOfTabs = CGFloat(Page.allCases.count)
        let heightForItens: CGFloat = 56
        
        let width = geo.size.width / numberOfTabs
        let height = geo.size.height / heightForItens
        
        let view = HStack {
            TabBarIcon(
                tabViewRouter: tabViewRouter, currentPage: .home,
                height: height, width: width, systemIconName: "house", tabName: "home"
            )
            
            TabBarIcon(
                tabViewRouter: tabViewRouter, currentPage: .search,
                height: height, width: width, systemIconName: "magnifyingglass", tabName: "search"
            )
            
            TabBarIcon(
                tabViewRouter: tabViewRouter, currentPage: .downloads,
                height: height, width: width, systemIconName: "square.and.arrow.down.fill", tabName: "dowloads"
            )
            
            TabBarIcon(
                tabViewRouter: tabViewRouter, currentPage: .profile,
                height: height, width: width, systemIconName: "person.circle", tabName: "profile"
            )
        }
        .frame(width: geo.size.width, height: 60)
        .padding(.bottom, 20)
        .background(Color.black)
        
        return view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: .init())
    }
}
