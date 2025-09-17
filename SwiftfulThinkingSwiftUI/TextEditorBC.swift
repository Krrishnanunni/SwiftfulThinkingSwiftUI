//
//  TextEditorBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 23/10/2025.
//

import SwiftUI

struct TextEditorBC: View {
    @State var Text: String = "Texctdsfdsfsdf"
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $Text)
                    .frame(height: 250)
                    
                    .colorMultiply(Color.gray)
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    SwiftUICore.Text(Text)
                }
                .frame(width: 200, height: 50)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(25)
                
                
                
                
            }
            .navigationTitle("TextEditor Bootcamp")
        }
        .padding()
    }
}

#Preview {
    TextEditorBC()
}
