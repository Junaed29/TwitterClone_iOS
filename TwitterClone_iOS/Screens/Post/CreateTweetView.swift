//
//  CreateTweetView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct CreateTweetView: View {
    
    @State private var tweetContent = ""
    @State private var placeholderText = "Whats happening?"
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Tweet").padding()
                }
                .background(Color.bgColor)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            
            ZStack {
                if self.tweetContent.isEmpty {
                    TextEditor(text:$placeholderText)
                        .font(.title2)
                        .foregroundColor(.gray)
                        .disabled(true)
                        .padding(.horizontal,2)
                }
                TextEditor(text: $tweetContent)
                    .font(.title2)
                    .opacity(self.tweetContent.isEmpty ? 0.25 : 1)
                    .padding(.horizontal,2)
            }
        }.padding()
    }
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()
    }
}
