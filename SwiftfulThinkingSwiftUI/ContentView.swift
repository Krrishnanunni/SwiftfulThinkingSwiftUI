//
//  ContentView.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 06/08/2025.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(colors: [Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))], startPoint: .topLeading, endPoint: .bottom)
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    ContentView()
}
