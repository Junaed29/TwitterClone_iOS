//
//  SearchView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 13/5/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchedText = ""
    @State var isEditing = false
    
    var body: some View {
        VStack {
            
            SearchBar(searchedText: $searchedText, isEditing: $isEditing)
                .padding(.horizontal)
            
            if isEditing{
                List(0..<9) { _ in
                    SearchUserCell()
                }
            }else{
                List(1..<10) { i in
                    SearchCell(tweets: String(i))
                }
            }
        }.listStyle(.plain)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
