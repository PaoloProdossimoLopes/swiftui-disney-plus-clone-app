//
//  ProfilePicView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

struct ProfilePicView: View {
    
    var profile: Profile
    
    var body: some View {
        Text(profile.avatar)
            .font(.system(size: 80))
            .padding()
            .background(
                RadialGradient(colors: [profile.backColor, .white], center: .center, startRadius: 10, endRadius: 100).clipShape(Circle()))
            .applyShaddow(color: ColorConstants.darkBluishGrayColor, radious: 5)
    }
}

struct ProfilePicView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ProfilePicView(profile: Profile.sampleProfiles[0])
        }
    }
}
