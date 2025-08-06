//
//  Stacks.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 08/08/2025.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100, alignment: .center)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 150, alignment: .center)
            
            Rectangle()
                .fill(.green)
                .frame(width: 200, height: 200, alignment: .center)
        }
    }
}

#Preview {
    Stacks()
}
