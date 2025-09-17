//
//  AnimationBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 14/10/2025.
//

import SwiftUI

struct AnimationBC: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        
        VStack{
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
                .foregroundStyle(isAnimated ? .green : .red)
                .frame(width:isAnimated ? 200 : 100,
                       height:isAnimated ? 200 : 100)
                .offset(y:isAnimated ? 0 : 100)
            
            
            Spacer()
            
            Button("Buttn"){
                withAnimation(.easeIn){
                    isAnimated.toggle()
                }
                    
                
                
            }
            
            
        }
        
    }
}

#Preview {
    AnimationBC()
}
