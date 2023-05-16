//
//  MainView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 15/5/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            TopBar()
            MainTabView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
