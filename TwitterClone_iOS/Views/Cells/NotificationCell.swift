//
//  NotificationCell.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 15/5/23.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top) {
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading, spacing: 5) {
                    CircularImageView(imageName: "logo")
                        .frame(width: 36, height: 36)
                    
                    Text("Junaed").bold()
                    
                    +
                    Text(" ")
                    +
                    
                    Text("Followed You").foregroundColor(.black)
                }
                
                Spacer()
            }
        }.padding(8)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
