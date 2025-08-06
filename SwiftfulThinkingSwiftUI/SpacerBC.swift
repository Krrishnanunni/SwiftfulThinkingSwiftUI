//
//  SpacerBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 12/08/2025.
//

import SwiftUI

struct SpacerBC: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                Image(systemName: "xmark")
                Spacer()

                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.blue)
            .padding(.horizontal)
             
            Spacer()

            Rectangle()
                .frame(height:55)
        }
        
    }
}

#Preview {
    SpacerBC()
}
