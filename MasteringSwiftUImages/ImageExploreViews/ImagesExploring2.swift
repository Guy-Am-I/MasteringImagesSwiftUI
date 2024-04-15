//
//  ImagesExploring2.swift
//  MasteringSwiftUImages
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct ImagesExploring2: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(NatureImage.allCases, id: \.self) { img in
                    Image(img.rawValue)
                        .resizable()
                        .scaledToFit()
                        .clipShape(.capsule)
                        .padding()
                        .shadow(radius: 10)
                }
            }
        }
    }
}

#Preview {
    ImagesExploring2()
}
