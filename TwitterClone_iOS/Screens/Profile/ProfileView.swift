//
//  ProfileView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 18/5/23.
//

import SwiftUI
import ScalingHeaderScrollView

struct ProfileView: View {
    
    @State var progress: CGFloat = 0
    @State var currentTab = "Tweets"
    @State private var isLoading = false
    
    var body: some View {
        ScalingHeaderScrollView {
            ProfileHeaderView(progress: $progress, currentTab: $currentTab)
        } content: {
            ProfileBodyView()
        }
        .height(min: 160, max: 480)
        .collapseProgress($progress)
        //.allowsHeaderGrowth()
        .allowsHeaderSnap()
        .ignoresSafeArea()
        .overlay(alignment: .topLeading) {
            Button {
                //
            } label: {
                Image(systemName: "chevron.left").foregroundColor(.bgColor)
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    
            }

        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
