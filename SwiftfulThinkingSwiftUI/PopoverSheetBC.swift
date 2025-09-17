//
//  PopoverBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/10/2025.
//

import SwiftUI

struct PopoverSheetBC: View {
    @State var showScreen = false
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
            
            // Method 1 Using Sheets
            
            .sheet(isPresented: $showScreen) {
                NewScreeen()

        }
        
        }
    }
}


struct NewScreeen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
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
    PopoverSheetBC()
    
}
