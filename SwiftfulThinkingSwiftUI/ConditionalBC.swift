//
//  ConditionalBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 14/08/2025.
//

import SwiftUI

struct ConditionalBC: View {
    @State var Showcircle: Bool = false
    @State var ShowcRectangle: Bool = false
    var body: some View {
        VStack{
            Button("Circle Button = \(Showcircle.description)"){
                       Showcircle.toggle()
            }
            .buttonStyle(.bordered)
            
            Button("Rectangle Button = \(Showcircle.description)"){
                       ShowcRectangle.toggle()
            }
            .buttonStyle(.bordered)
            
            if Showcircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if ShowcRectangle{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if ShowcRectangle && Showcircle{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 200, height: 100)
                    ProgressView()
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBC()
}
