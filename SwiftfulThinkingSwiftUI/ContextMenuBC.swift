//
//  ContextMenuBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 23/10/2025.
//

import SwiftUI

struct ContextMenuBC: View {
    @State var isLiked: Bool = false
    var bgColor: Color {
            isDarkModeEnabled ? .black : .white
    }
    @State var isDarkModeEnabled: Bool = false
    var body: some View {
        ZStack {
            
            bgColor.ignoresSafeArea(edges: .all)
           
            VStack(alignment: .leading, spacing: 10.0){
                HStack() {
                    Image(systemName: "house.fill")
                        .font(.title)
                    
                    Spacer()
                    
                    
                    
                    
                    Button {
                        withAnimation(.easeInOut) {
                            isLiked.toggle()
                        }
                    } label: {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .font(.title)
                            .padding(.leading)
                            .foregroundStyle(isLiked ? Color.pink : .white)
                    }
                    
                }
                Text("SwiftFullThinking")
                    .font(.headline)
                Text("How to use ContextMenu()")
                    .font(.subheadline)
                
                VStack{
                    withAnimation(.bouncy) {
                        Toggle("Change Theme", isOn: $isDarkModeEnabled)
                    }
                    
                }
            }
            .padding(30.0)
            .frame(width: 250.0)
            .background(Color(red: 0.145, green: 0.295, blue: 0.83))
            .cornerRadius(25)
            .foregroundStyle(Color.white)
            .shadow(color: isLiked ? Color.pink : .black, radius: 10)
            .contextMenu {
                Button {
                    withAnimation(.spring()) {
                        isLiked.toggle()
                    }
                    
                } label: {
                    HStack{
                        Text(isLiked ? "Liked" : "Like")
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                    }
                    
                }
                Button {
                    withAnimation {
                        isDarkModeEnabled.toggle()
                    }
                } label: {
                    Text("Change Theme")
                }
                
            }
        }
        
    }
}

#Preview {
    ContextMenuBC()
}
