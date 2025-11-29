//
//  DarkModeBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 29/11/25.
//

import SwiftUI

struct DarkModeBC: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView(content: {
            ScrollView{
                VStack(spacing: 20){
                    
                    Text("This Color is primary")
                        .foregroundStyle(.primary)
                    
                    Text("This Color is secondary")
                        .foregroundStyle(.secondary)
                    
                    Text("This Color is white")
                        .foregroundStyle(.white)
                    
                    Text("This Color is black")
                        .foregroundStyle(.black)
                    
                    Text("This Color is red")
                        .foregroundStyle(.red)
                    
                    Text("This is a Globally Adaptive Custom Colors")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This is a Globally Adaptive Custom Colors")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow )
                }
                
                .navigationTitle("DarkMode BootCamp")
            }
        })
    }
}

#Preview {
        DarkModeBC()
            .preferredColorScheme(.dark)
    }

