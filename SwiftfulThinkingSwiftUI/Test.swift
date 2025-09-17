//
//  Test.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 23/10/2025.
//

import SwiftUI

struct Test: View {
    var body: some View {
        
        
        
        HStack {
            ExtractedView()
            ExtractedView()
            ExtractedView()
            ExtractedView()
            
        }
        
        
        
        
        
    }
}

#Preview {
    Test()
}

struct ExtractedView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Vidya ")
            Text("Anil")
            
            Text("nandu")
            Text("KIchu")
        }
        .font(.largeTitle)
    }
}
