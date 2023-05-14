//
//  FeedView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 13/5/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 10) {
                
                TwitterListCell(imageUrl: "https://i.insider.com/61d80838d21c1e0019ee291d?width=1136&format=jpeg")
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TwitterListCell()
                    Divider()
                }
            }
            .zIndex(0)
            
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
