//
//  CircularImageView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct CircularImageView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(.black, lineWidth: 2))
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(imageName: "logo")
            .frame(width: 300, height: 300)
    }
}
