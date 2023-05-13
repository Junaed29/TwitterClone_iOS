//
//  TweetButtonView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 13/5/23.
//

import SwiftUI

struct TweetButtonView: View {
    var body: some View {
        Image("tweet")
            .renderingMode(.template)
            .resizable()
            .frame(width: 20, height: 20)
            .padding()
            .background(Color("bg"))
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}

struct TweetButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TweetButtonView()
    }
}
