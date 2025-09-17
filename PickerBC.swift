//
//  PickerBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 24/10/2025.
//

import SwiftUI

struct PickerBC: View {
//    @State var selectedItem: Int = 1
    @State var selection: String = "Most Recent"
    
    let filterOptions: [String] = ["Most Recent", "Most Viewed", "Most Liked"]
    
    var body: some View {
//        
//        VStack{
//            Picker(selection: $selection) {
//                ForEach(filterOptions, id: \.self) { option in
//                    Text(option).tag(option)
//                }
//            } label: {
//                HStack{
//                    Text("Filter")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//                
//                
//                
//                
//                
//            }
            
        
        VStack {
            Picker(selection: $selection,
                   label:
                    HStack{
                Text("Filter")
                Text(selection)
            }
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
                   
                   
                   , content:
                    {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            })
            .pickerStyle(MenuPickerStyle())
        }

        
        
        
        
        
        
//        VStack{
//                Text("age : \(selectedItem)")
//            
//            Picker(selection: $selectedItem) {
//                
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag(number)
//                    
//                }
//            } label: {
//                
//                    Text("Fixlter:")
//                
//            }
//            .pickerStyle(.inline)
//        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        VStack{
//            HStack{
//                Text("Age")
//                Text("\(selectedItem)")
//                    
//            }
//            .font(.title)
//            Picker(selection: $selectedItem) {
//                ForEach(15..<100) { numbers in
//                    Text("\(numbers)")
//                        .tag("\(numbers)")
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(.wheel)
//        
//        }

    }
}

#Preview {
    PickerBC()
}
