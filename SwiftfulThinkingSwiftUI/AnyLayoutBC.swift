//
//  AnyLayout.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 21/01/26.
//

import SwiftUI

struct AnyLayoutBC: View {
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    
    
    var body: some View {
        VStack{
            Text("vertical : \(verticalSizeClass.debugDescription)")
            Text("Horizontal : \(horizontalSizeClass.debugDescription)")
            
            let layout = verticalSizeClass == .regular ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout{
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
        }
    }
}

#Preview {
    AnyLayoutBC()
}
