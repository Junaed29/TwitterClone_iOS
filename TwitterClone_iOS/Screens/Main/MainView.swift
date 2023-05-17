//
//  MainView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 15/5/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var width = UIScreen.main.bounds.width 
    @State private var  x = -UIScreen.main.bounds.width
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                VStack(spacing: 0.0) {
                    TopBar(x: $x)
                    MainTabView()
                }
                
                SlideMenuView(x: $x)
                    .offset(x: x)
                    .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5)
                    .background(Color.black.opacity(x == 0 ? 0.5 : 0))
            }
            .gesture(DragGesture()
                .onChanged(){ value in
                    withAnimation {
                        if value.translation.width > 0{
                            if x < 0{
                                x = -width + value.translation.width
                            }
                        }else{
                            if x != -width{
                                x = value.translation.width
                            }
                        }
                    }
                }
                .onEnded(){ value in
                    withAnimation {
                        if -x < width / 2{
                            x = 0
                        }else{
                            x = -width
                        }
                    }
                }
            )
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
