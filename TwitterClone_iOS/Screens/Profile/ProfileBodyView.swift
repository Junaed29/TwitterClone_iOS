//
//  ProfileBodyView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 18/5/23.
//

import SwiftUI

struct ProfileBodyView: View {
    var body: some View {
        LazyVStack{
            TwitterListCell(imageUrl: "https://i.insider.com/61d80838d21c1e0019ee291d?width=1136&format=jpeg")
            
            Divider()
            
            ForEach(1...20,id: \.self){_ in
                
                TwitterListCell()
                
                Divider()
            }
        }
    }
}

struct ProfileBodyView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBodyView()
    }
}
