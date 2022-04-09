//
//  SplashAnimationView.swift
//  DisneyPlusCloneApp
//
//  Created by Paolo Prodossimo Lopes on 09/04/22.
//

import SwiftUI
import UIKit
import SwiftyGif

final class SplashAnimationView: UIViewRepresentable {
    
    let name: String = "disneyPlusAnimated.gif"
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        
        do {
            let gif = try UIImage(gifName: name)
            let imageView = UIImageView(gifImage: gif, loopCount: 1)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame = view.frame
            
            view.addSubview(imageView)
            
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
                imageView.heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
        } catch {
            print(error)
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
