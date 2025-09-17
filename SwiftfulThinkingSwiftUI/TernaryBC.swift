//
//  TernaryBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 14/10/2025.
//

import SwiftUI

struct TernaryBC: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        
        VStack{
            
            Button {
                isOn.toggle()
            } label: {
                Text("Button : \(isOn.description)")
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isOn ? 200 : 100,
                       height:  isOn ? 100 : 200)
                .foregroundColor(isOn ? Color.blue : Color.red)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBC()
}
