//
//  SliderBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 27/11/25.
//

import SwiftUI

struct SliderBC: View {
    @State var val:CGFloat = 0
    var body: some View {
        VStack{
        HStack{
              Text("the Rating is")
            Text(String(format: "%.0f", val))
          }
            
//            Slider(value: $val, in: 1...5)
            Slider(value: $val, in: 0...5, step: 0.5) {
                Text("label")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("5")
            }
            .accentColor(.red)

        }
        .padding()
    }
}

#Preview {
    SliderBC()
}
    
