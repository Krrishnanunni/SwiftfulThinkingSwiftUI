//
//  StateProperty.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 17/09/2025.
//
//Completed
import SwiftUI

struct StateProperty: View {
    
    @State var bgColor = Color.teal
    @State var title = "Defaul Title"
    @State var count = 1
     
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.headline)
                    
                Text("Count \(count)")
                    .underline(true)
                
                HStack(spacing: 20) {
                    Button("Button -") {
                        
                        bgColor = .red
                        count -= 1
                        title = "Substract"
                    }
                    .foregroundStyle(.white)
                    
                    Button {
                        bgColor = .green
                        count += 1
                        title = "Add"
                    } label: {
                        Text("button +")
                    }
                        .foregroundStyle(.white)

                }
            }
        }
    }
}

#Preview {
    StateProperty()
}
