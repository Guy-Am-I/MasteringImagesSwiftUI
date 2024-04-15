//
//  ImagesExploring3.swift
//  MasteringSwiftUImages
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct ImagesExploring3: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    @State private var showName = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(NatureImage.allCases, id: \.self) { img in
                    let name = img.rawValue
                    let niceName = name.replacingOccurrences(of: "img", with: "")
                    
                    Image(name)
                        .resizable()
                        .frame(width: screenWidth * 0.8, height: screenHeight * 0.25)
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                            Text(showName ? niceName.capitalized : "")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                        )
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 1)) {
                                showName.toggle()
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    ImagesExploring3()
}
