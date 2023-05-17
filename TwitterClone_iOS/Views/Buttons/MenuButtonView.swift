//
//  MenuButtonView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 16/5/23.
//

import SwiftUI

struct MenuButtonView: View {
    var title: String

    
    var body: some View {
        HStack(spacing: 15) {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(.black)
            
            Spacer()
        }.padding(.vertical, 12)
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView(title: "Profile")
    }
}
