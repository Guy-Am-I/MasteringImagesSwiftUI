//
//  ImagesExploring.swift
//  MasteringSwiftUImages
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct ImagesExploring: View {
    
    @State private var scaledToFit = false
    
    var body: some View {
        if scaledToFit {
            Image(NatureImage.img0.rawValue)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerSize: CGSize(width: 30, height: 30)))
                .padding()
                .onTapGesture {
                    scaledToFit.toggle()
                }
        } else {
            Image(NatureImage.img0.rawValue)
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.8,
                       height: UIScreen.main.bounds.height * 0.3)
                .scaledToFill()
                .clipShape(.rect(cornerSize: CGSize(width: 30, height: 30)))
                .padding()
                .onTapGesture {
                    scaledToFit.toggle()
                }
        }
    }
}

#Preview {
    ImagesExploring()
}
