//
//  PopoverAnimationOffSett.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/10/2025.
//

import SwiftUI

struct PopoverAnimationOffSett: View {
    @State var showScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // Method 3 Using Animation Offset
            
            NewScreee2(showScreen: $showScreen)
                .padding(.top , 20)
                .offset(y: showScreen ? 20 : UIScreen.main.bounds.height)
                .animation(.spring())
        
        }
    }
}

struct NewScreeen3: View {
    @Binding var showScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .padding(20)
            }

        }
    }
}

#Preview {
    PopoverAnimationOffSett()
}
