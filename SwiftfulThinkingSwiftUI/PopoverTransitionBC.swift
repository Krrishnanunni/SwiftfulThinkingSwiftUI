//
//  PopoverTransitionBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/10/2025.
//

import SwiftUI

struct PopoverTransitionBC: View {
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
            
            // Method 2 Using Transitions
            
            ZStack{
                    if showScreen {
                        NewScreee2(showScreen: $showScreen)
                            .padding(.top, 70)
                            .transition(.move(edge: .bottom))
                            .animation(.spring)
                    

                }
                }
            .zIndex(2.0)
        
        }
    }
}


struct NewScreee2: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showScreen.toggle()
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
    PopoverTransitionBC()
}
