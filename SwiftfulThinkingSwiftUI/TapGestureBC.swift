//
//  TapGestureBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 01/12/25.
//

import SwiftUI

struct TapGestureBC: View {
    
    @State var isSelected:Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.red : Color.gray)
            
            VStack(spacing: 15){
                Button {
                    withAnimation{
                        isSelected.toggle()
                    }
                } label: {
                    Text("Button")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(Capsule(style: .continuous))
                }
                Text("Button2")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(Capsule(style: .continuous))
                    .onTapGesture {
                        withAnimation {
                            isSelected.toggle()
                        }
                    }
                
                Text("Button3")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(Capsule(style: .continuous))
                    .onTapGesture(count: 2) {
                        withAnimation {
                            isSelected.toggle()
                        }
                    }
                
            }
            Spacer()
        }
        .padding(30)
        
    }
}

#Preview {
    TapGestureBC()
}

