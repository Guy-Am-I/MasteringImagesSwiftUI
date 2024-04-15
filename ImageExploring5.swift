//
//  ImageExploring5.swift
//  MasteringSwiftUImages
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct ImageExploring5: View {
    let doggy = "https://images.unsplash.com/photo-1552053831-71594a27632d?q=80&w=1562&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    var body: some View {
        ImageFromURL(urlString: doggy, width: .infinity, height: 400, contentMode: .fit, cornerRadius: 30)
    }
}

struct ImageFromURL: View {
    let urlString: String
    var width: CGFloat = 100
    var height: CGFloat = 100
    var contentMode: ContentMode = .fit
    var cornerRadius: CGFloat = 30
    
    var body: some View {
        AsyncImage(url: URL(string: urlString)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let img):
                img.resizable()
                    .aspectRatio(contentMode: contentMode)
                    .frame(width: width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            case .failure(_):
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    ImageExploring5()
}
