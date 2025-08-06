//
//  imageBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 06/08/2025.
//

import SwiftUI

struct imageBC: View {
    var body: some View {
       Image("therock")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 400)
//            .cornerRadius(25)
            .clipShape(.capsule)
        
    }
}

#Preview {
    imageBC()
}
