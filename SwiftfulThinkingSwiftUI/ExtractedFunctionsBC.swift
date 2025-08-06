//
//  ExtractedFunctionsBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 18/09/2025.
//

import SwiftUI

struct ExtractedFunctionsBC: View {
    
    @State var bgColor = Color.pink
    @State var buttonColor = Color.mint
    
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            //content goes here
            
            contentLayer
        }
    }
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
                .foregroundStyle(.black)
            Button {
                buttonPressed()
            } label: {
                Text("Press ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(buttonColor.opacity(0.33))
                    .cornerRadius(25)
                
            }

        }
    }
    
    func buttonPressed() {
        
        
        switch bgColor {
        case .pink:
            bgColor = .mint
            buttonColor = .pink
        default:
            bgColor = .pink
            buttonColor = .mint
        }
    }
}

#Preview {
    ExtractedFunctionsBC()
}
