//
//  SlideMenuView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 16/5/23.
//

import SwiftUI

struct SlideMenuView: View {
    @State private var show = false
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    @State private var width = UIScreen.main.bounds.width
    
    @Binding var x: CGFloat
    
    var body: some View {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    CircularImageView(imageName: "logo")
                        .frame(width: 60, height: 60)
                    
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Junaed")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("@junaed29")
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 20) {
                                FollowView(count: 8, title: "Following")
                                
                                FollowView(count: 16, title: "Followers")
                            }.padding(.top, 10)
                            
                            Divider().padding(.top, 10)
                        }
                        
                        Button {
                            withAnimation {
                                self.show.toggle()
                            }
                        } label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .frame(width: 30, height: 30)
                                .foregroundColor(.bgColor)
                        }
                    }
                    
                    
                    
                    VStack(alignment: .leading) {
                        ForEach(menuButtons, id: \.self) {buttonName in
                            MenuButtonView(title: buttonName)
                        }
                        
                        Divider().padding(.top)
                        
                        
                        Button {
                            //
                        } label: {
                            MenuButtonView(title: "Twitter Ads")
                        }
                        
                        Divider()
                        
                        Button {
                            //
                        } label: {
                            Text("Settings and privacy").foregroundColor(.black)
                        }.padding(.top)
                        
                        
                        Button {
                            //
                        } label: {
                            Text("Help Center").foregroundColor(.black)
                        }.padding(.top)
                        
                        
                        Spacer()
                        
                        Divider().padding(.bottom)
                        
                        HStack {
                            Button {
                                //
                            } label: {
                                Image("help")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(.bgColor)
                            }
                            
                            Spacer()
                            
                            Button {
                                //
                            } label: {
                                Image("barcode")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(.bgColor)
                            }
                            
                        }.padding(.trailing)
                    }
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    
                    VStack(alignment: .leading) {
                        Button {
                            //
                        } label: {
                            Text("Create a new account").foregroundColor(.bgColor)
                        }.padding(.vertical)
                        
                        Button {
                            //
                        } label: {
                            Text("Add an existion account").foregroundColor(.bgColor)
                        }
                        
                        Spacer()
                    }
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                    
                    
                }
                .padding(.leading, 20)
                .padding(.top,  15)
                .padding(.bottom, 15)
                .frame(width:  width - 90, alignment: .leading)
                .background(Color.white)
                //.ignoresSafeArea(.all, edges: .vertical)
                
                
                Rectangle()
                    .ignoresSafeArea(.all)
                    .opacity(0.001)
                    .onTapGesture {
                        withAnimation {
                            x = -width
                        }
                    }
            }
        }
}

struct SlideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuView(x: .constant(0.0))
    }
}
