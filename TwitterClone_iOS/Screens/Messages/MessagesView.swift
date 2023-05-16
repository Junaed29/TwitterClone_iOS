//
//  MessagesView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 13/5/23.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10, id: \.self) { _ in
                    MessageCell()
                    Divider()
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
