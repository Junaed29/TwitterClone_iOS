//
//  ProfileHeaderView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 18/5/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let bio = "Have you ever noticed how people seem to love talking about the weather"
    @Binding var progress: CGFloat
    @Binding var currentTab: String
    // For Smooth Slide Animation...
    @Namespace var animation
    
    var body: some View {
            VStack(spacing: 0) {
                
                Image("banner")
                    .resizable()
                    .frame(height: 180)
                    .scaledToFit()
                    .ignoresSafeArea()

                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 90, height: 90)
                        .cornerRadius(45)
                        .overlay(Circle().stroke(.white,lineWidth: 5))
                        .offset(y: -30)
                        .padding(.bottom, -30)
                        .padding(.leading)

                    Spacer()

                    Button {
                        //
                    } label: {
                        Text("Edit Profile")
                            .padding(10)
                            .background {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.blue, lineWidth: 3)
                            }
                            .padding(.trailing)
                            .padding(.top)
                    }
                }

                ZStack(alignment: .top) {
                    HStack{
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Junaed").font(.title2).bold()

                            Text("@junaed29").padding(.top,5).foregroundColor(.gray)

                            Text(bio).bold().padding(.top,5)

                            HStack {
                                FollowView(count: 10, title: "Followers")

                                FollowView(count: 123, title: "Followers")
                            }.padding(.top)
                        }.padding(20)

                        Spacer()
                    }
                    .opacity(1 - max(0, min(1, (progress - 0.75) * 4.0)))
                    
                    
                    VStack(spacing: 0) {
                        VStack(spacing: 0){
                            Text("Junaed").bold()
                            Text("\(100) Tweets").fontWeight(.light)
                                .padding(.bottom)
                        }.foregroundColor(.white).frame(maxWidth: .infinity, minHeight: 180, alignment: .bottom)
                            .background(content: {
                                BlurView()
                            })

                    }.opacity(max(0, min(1, (progress - 0.75) * 7.0)))
                    
                }
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    HStack(spacing: 0){
                        
                        TabButton(title: "Tweets", currentTab: $currentTab, animation: animation)
                        
                        TabButton(title: "Tweets & Likes", currentTab: $currentTab, animation: animation)
                        
                        TabButton(title: "Media", currentTab: $currentTab, animation: animation)
                        
                        TabButton(title: "Likes", currentTab: $currentTab, animation: animation)
                    }
                })
                .padding(.top)
                .background(.white)
                
                Divider().padding(.bottom)

            }.frame(height: 480)
            
       
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(progress: .constant(0.0), currentTab: .constant("Tweets"))
    }
}
