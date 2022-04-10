//
//  MovieSectionView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 10/04/22.
//

import SwiftUI

struct MovieSectionView: View {
    
    var movieSection: MovieSection
    @State private var selectedMovie: Movie?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movieSection.sectionName)
                .foregroundColor(.gray)
                .font(.title3)
                .bold()
            
            ScrollView.init(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(movieSection.movies) { movie in
                        Button(action: { self.selectedMovie = movie },
                               label: {
                            Image(movie.posterImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                                .frame(width: 150)
                        })
                        .sheet(item: self.$selectedMovie) { item in
                                //Implement
                        }
                    }
                }
            }
            .frame(height: 280)
        }
        .padding()
    }
}

struct MovieSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            MovieSectionView(movieSection: .recomended)
        }
    }
}
