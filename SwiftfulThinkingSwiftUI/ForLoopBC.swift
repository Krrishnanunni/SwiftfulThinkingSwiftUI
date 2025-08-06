//
//  ForLoopBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/08/2025.
//

import SwiftUI

struct ForLoopBC: View {
    
    let data = ["Melvin","Kelvin","Godwin"]
    let color = [Color.green,Color.blue,Color.yellow]
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                HStack {
                    Text("Hi \(self.data[index]), Your Roll No is \(index)")
                        .fontWeight(.medium)
                        .fontDesign(.rounded)
                        .padding()
                
                    
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(self.color[index])
                }
                .padding()
            }
        }
    }
}

#Preview {
    ForLoopBC()
}
