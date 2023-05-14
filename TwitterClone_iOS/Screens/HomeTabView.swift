//
//  ContentView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 13/5/23.
//

import SwiftUI

struct HomeTabView: View {
    @State private var showCreateTweet = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                TabView {
                    FeedView()
                        .tabItem {
                            Image("Home")
                                .renderingMode(.template)
                        }.tag(0)
                    
                    SearchView()
                        .tabItem {
                            Image("Search")
                                .renderingMode(.template)
                        }.tag(1)
                    
                    NotificationsView()
                        .tabItem {
                            Image("Notifications")
                                .renderingMode(.template)
                        }.tag(2)
                    
                    MessagesView()
                        .tabItem {
                            Image("Messages")
                                .renderingMode(.template)
                        }.tag(3)
                }
                
                HStack {
                    Spacer()
                    
                    Button {
                        showCreateTweet.toggle()
                    } label: {
                        TweetButtonView().padding(.trailing, 20)
                    }

                }.padding(.bottom, 75)
            }
        }
        .sheet(isPresented: $showCreateTweet) {
            CreateTweetView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
