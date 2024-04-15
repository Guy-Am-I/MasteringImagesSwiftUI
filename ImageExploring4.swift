//
//  ImageExploring4.swift
//  MasteringSwiftUImages
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct ImageExploring4: View {
    let surpriseImg = "https://images.unsplash.com/photo-1552053831-71594a27632d?q=80&w=1562&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    var body: some View {
        AsyncImage(url: URL(string: surpriseImg)) {
            phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let img):
                img.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 400)
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
    ImageExploring4()
}
