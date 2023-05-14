//
//  SearchUserCell.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            CircularImageView(imageName: "logo")
                .frame(width: 44, height: 44)
            
            VStack(alignment: .leading) {
                Text("Junaed").fontWeight(.heavy)
                Text("@Junaed29").fontWeight(.light)
            }
            
            Spacer()
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
