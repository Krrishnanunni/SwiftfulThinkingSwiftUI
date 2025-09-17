//
//  TransitionBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 15/10/2025.
//

import SwiftUI

struct TransitionBC: View {
    @State var showView:Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
//            RoundedRectangle(cornerRadius: 25)
//                .frame(height: UIScreen.main.bounds.height/2)
//                .opacity(showView ? 1 : 0)
//                .animation(.default)
            
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height/2)
                    .transition(.move(edge: .bottom))
                    .animation(.default)
                    
            }
            
           
        }
            .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBC()
}
