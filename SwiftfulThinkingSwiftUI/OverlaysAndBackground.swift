//
//  OverlaysAndBackground.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 07/08/2025.
//

import SwiftUI
    
struct OverlaysAndBackground: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.purple,Color.red],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .gray, radius: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .gray, radius: 10)
                        ,
                        alignment: .bottomTrailing
                            )

            )
            
    }
}

#Preview {
    OverlaysAndBackground()
}
