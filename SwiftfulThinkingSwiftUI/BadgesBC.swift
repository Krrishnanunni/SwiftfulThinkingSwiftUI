//
//  BadgesBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/12/25.
//

import SwiftUI

struct BadgesBC: View {
    var body: some View {
        TabView{
            Color.red.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "pin")
                    Text("Pins")
                }
                .badge(4)
            Color.blue.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Saved")
                }
                .badge(4)
            Color.purple.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .badge(4)
        }
    }
}

#Preview {
    BadgesBC()
}
