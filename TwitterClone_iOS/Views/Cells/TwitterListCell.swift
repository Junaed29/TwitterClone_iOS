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
        HStack(alignment: .top,spacing: 10){
            CircularImageView(imageName: "logo")
                .frame(width:50, height: 50)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack{
                    Text("Junaed")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.black)
                    
                    Text("@junaed29")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                HashtagStyledTextView(text: text)
                    .lineLimit(5)

                
                if let imageUrl {
     
                    GeometryReader{ proxy in
            
                        LoadImageFromUrl(urlString: imageUrl, placeHolderImageName: "Twitter")
                            .frame(width: proxy.frame(in: .global).width, height: 250)
                            .cornerRadius(15)
                    }
                    .frame(height: 250)
                }
                
                // Cell Bottom
                
                
                HStack(spacing : 50) {
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("Comments").resizable().frame(width: 16, height: 16)
                        
                    }.foregroundColor(.gray)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("Retweet").resizable().frame(width: 18, height: 14)
                        
                    }.foregroundColor(.gray)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("love").resizable().frame(width: 18, height: 15)
                        
                    }.foregroundColor(.gray)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("upload").resizable().renderingMode(.template).frame(width: 16, height: 16)
                        
                    }.foregroundColor(.gray)
                }
                .padding(.top, 4)
                .padding(.leading)
                
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
      
    }

}

struct TwitterListCell_Previews: PreviewProvider {
    static var previews: some View {
        TwitterListCell(imageUrl: "https://i.insider.com/61d80838d21c1e0019ee291d?width=1136&format=jpeg")
    }
}
