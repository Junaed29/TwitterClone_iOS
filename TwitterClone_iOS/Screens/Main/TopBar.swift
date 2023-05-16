//
//  TopBar.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 15/5/23.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(.bgColor)
                }
                    
                Spacer()
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                Spacer()
            }.padding()
            
            Divider()
        }.background(Color.white)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
