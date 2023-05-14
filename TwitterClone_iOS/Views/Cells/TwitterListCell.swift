//
//  TwitterListCell.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct TwitterListCell: View {
    var imageUrl: String? = nil
    var text = "I'm so excited to be learning #SwiftUI! It's such a powerful tool for creating beautiful and interactive user interfaces. #iOSDev #DeveloperLife"

    
    var body: some View {
        HStack(alignment: .top){
            CircularImageView(imageName: "logo")
                .padding(.trailing,4)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading) {
                HStack{
                    Text("Junaed")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.black)
                    
                    Text("@junaed29")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }.padding(.bottom,4)

                HashtagStyledTextView(text: text)
                    .lineLimit(5)

                
                if let imageUrl {
                    LoadImageFromUrl(urlString: imageUrl, placeHolderImageName: "Twitter")
                        .aspectRatio(contentMode: .fill)
                        .frame(maxHeight: 250, alignment: .leading)
                        .cornerRadius(15)
                }
                
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "message").frame(width: 60)
                    }
                    
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "repeat").frame(width: 60)
                           
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "heart").frame(width: 60)
                            
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "square.and.arrow.up").frame(width: 60)
                    }
                    
                    Spacer()
                    
                }
                .padding(.top)
                .font(.title2)
                .foregroundColor(.gray)
                
            }.padding(.leading,4)
        }.padding()
    }

}

struct TwitterListCell_Previews: PreviewProvider {
    static var previews: some View {
        TwitterListCell(imageUrl: "https://i.insider.com/61d80838d21c1e0019ee291d?width=1136&format=jpeg")
    }
}
