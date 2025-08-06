//
//  ButtonsBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/09/2025.
//

import SwiftUI

struct ButtonsBC: View {
    @State var title: String = "This is my title"
    var body: some View {
        VStack(spacing:20){
            Text(title)
            Button("Press Me") {
                self.title = "Button Was Changed"
            }
            .accentColor(Color.red)
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Text("Button")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            Button {
                self.title = "#3 Button"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.red)
                            .font(.largeTitle)
                    }
            }
            
            Button {
                self.title = "Button #4"
            } label: {
                Text("Finished")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }


        }
    }
}

#Preview {
    ButtonsBC()
}
