//
//  SafeAreaInsetBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 03/01/26.
//

import SwiftUI

struct SafeAreaInsetBC: View {
    var body: some View {
        NavigationStack{
            List(0..<10){ _ in
                Rectangle()
                    .frame(height: 100*3)
            }
            
            .navigationTitle("Safe Area Inset")
//            .overlay(alignment: .bottom) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
            
            .safeAreaInset(edge: .bottom , alignment: .leading) {
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(.circle)
                    .padding()
            }
        }
        
    }
}

#Preview {
    SafeAreaInsetBC()
}
