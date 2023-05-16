//
//  NotificationView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 13/5/23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10, id: \.self) { _ in
                    NotificationCell()
                    Divider()
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
