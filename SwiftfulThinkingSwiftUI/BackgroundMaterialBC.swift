//
//  BackgroundMaterialBC.swift
//  JeetMeetSwiftUI
//
//  Created by Krishnanunni K A on 19/12/25.
//

import SwiftUI

struct BackgroundMaterialBC: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
            
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 50, height: 6)
                    .padding(10)
            Spacer()
                    
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
        }
        .ignoresSafeArea()
        
        .background(
            Image("therock")
                .resizable()
                .aspectRatio(contentMode: .fill )
                
        )
    
    }
}

#Preview {
    BackgroundMaterialBC()
}
