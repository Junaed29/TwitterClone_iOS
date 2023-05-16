//
//  MessageCell.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 15/5/23.
//

import SwiftUI

struct MessageCell: View {
    var body: some View {
        HStack(alignment: .top) {
            CircularImageView(imageName: "logo")
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                HStack {
                    Text("Junaed").bold()
                    
                    Text("@junaed29").fontWeight(.light).foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("15/5/2022").fontWeight(.light).foregroundColor(.gray)
                }
                
                Text("You: Hey how are you?").foregroundColor(.gray)
            }
        }.padding(8)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
