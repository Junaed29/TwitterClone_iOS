//
//  Searchar.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchedText: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search Twitter", text: $searchedText)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(alignment: .leading) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                }
            
            
            Button {
                isEditing = false
                searchedText = ""
                UIApplication.shared.endEditing()
            } label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                    .animation(.default, value: isEditing)
            }

        }.onTapGesture {
            isEditing = true
        }
    }
}

struct Searchar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchedText: .constant(""), isEditing: .constant(false))
    }
}
