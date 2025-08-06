//
//  IconsBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 06/08/2025.
//

import SwiftUI

struct IconsBC: View {
    var body: some View {
        Image(systemName: "pin.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .font(.title)
//            .font(.system(size: 60))
            .foregroundColor(.blue)
            .frame(width: 300, height: 300)
        
    }
}

#Preview {
    IconsBC()
}
