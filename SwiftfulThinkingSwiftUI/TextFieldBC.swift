//
//  TextFieldBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 23/10/2025.
//

import SwiftUI

struct TextFieldBC: View {
    @State var text = ""
    @State var dataArray:[String] = ["test","test"]
    var body: some View {
        NavigationView {
            VStack{
                
                List{
                    ForEach(dataArray, id:\.self){item in
                        Text(item)
                    }
                    
                }
                
                
                VStack(spacing: 10){
                    TextField("Type Something Here", text: $text)
                        .frame(maxWidth: .infinity,maxHeight: 20)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundStyle(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    
                    
                    Button {
                        if isTextValid() {
                            saveText()
                        }
             
                    } label: {
                        Text("Save".capitalized)
                            .frame(maxWidth: .infinity,maxHeight: 20)
                            .padding()
                            .foregroundStyle(Color.white)
                            .background(isTextValid() ? Color.blue : Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    }
                    .disabled(!isTextValid())
                }
                .padding()
                Spacer()
                
            }
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func isTextValid() -> Bool {
        if text.count > 2 {
            
            return true
        }else{
            return false
        }
    }
    
    func saveText(){
        
            dataArray.append(text)
        
        text = ""
    }
}

#Preview {
    TextFieldBC()
}
