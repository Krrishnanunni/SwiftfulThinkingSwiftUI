//
//  StepperBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 23/11/25.
//

import SwiftUI

struct StepperBC: View {
    
    @State var bindingNum:Int = 0
    @State var widthInc:CGFloat = 0
    var body: some View {
        
        
        VStack{
            Text("Hello, World!")
            Stepper("Stepper \(bindingNum)", value: $bindingNum)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100 +  widthInc, height: 100)
            Stepper("Stepper") {
                widthinc(amount: 10)
            } onDecrement: {
                widthinc(amount: -10)
            }

        }
        .padding(40)
    }
    
    func widthinc(amount:CGFloat){
        withAnimation(.bouncy){
            widthInc += amount
        }
        
    }
}

#Preview {
    StepperBC()
}
