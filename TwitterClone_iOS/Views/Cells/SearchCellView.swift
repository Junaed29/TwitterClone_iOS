//
//  SerachCellView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct SearchCell: View {
    var tag = ""
    var tweets = ""
    
    var body: some View {
        VStack {
            Text("Hello").fontWeight(.heavy)
            Text(tweets + " Tweets").fontWeight(.light)
        }
    }
}

struct SerachCellView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCell()
    }
}
