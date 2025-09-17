//
//  ColorPickerBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/11/25.
//

import SwiftUI

struct ColorPickerBC: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack{
            
            bgColor
                .ignoresSafeArea()
            ColorPicker("select Color",
                        selection: $bgColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .foregroundStyle(.white)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBC()
}
