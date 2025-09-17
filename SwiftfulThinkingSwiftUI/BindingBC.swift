//
//  Binding.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 14/10/2025.
//

import SwiftUI

struct BindingBC: View {
    
    @State var bgcolor: Color = Color.green
    @State var title: String = "The Title"
    
    var body: some View {
        ZStack {
            bgcolor
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text(title)
                    .foregroundColor(Color.white)
                ButtonView(bgcolor: $bgcolor, title: $title)
            }
            
           
            

        }
    }
}

struct ButtonView: View{
    
    @Binding var bgcolor: Color
    @State var btColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View{
        
        
        
        Button {
            
            bgcolor = Color.orange
            title = "New Title"
            
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingBC()
}
