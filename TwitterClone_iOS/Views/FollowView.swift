//
//  FollowView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 16/5/23.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView(count: 12, title: "Following")
    }
}
