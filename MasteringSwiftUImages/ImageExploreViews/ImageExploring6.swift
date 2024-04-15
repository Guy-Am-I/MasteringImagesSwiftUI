//
//  ImageExploring6.swift
//  MasteringSwiftUImages
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct ImageExploring6: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(NatureImage.allCases, id: \.self) { img in
                    Image(img.rawValue)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

#Preview {
    ImageExploring6()
}
