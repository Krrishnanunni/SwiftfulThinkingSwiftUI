//
//  SwiftPaddingBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 12/08/2025.
//

import SwiftUI

struct SwiftPaddingBC: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(15)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.") 
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal,10)
        
        
    }
}

#Preview {
    SwiftPaddingBC()
}
