//
//  ExtractSubview.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 18/09/2025.
//

import SwiftUI

struct ExtractSubview: View {
    var body: some View {
        ZStack{
            Color.mint.ignoresSafeArea()
            
//            VStack{
//                Text("56")
//                Text("Apples")
//            }
//            .foregroundStyle(Color.black)
//            .padding()
//            .background(Color.red)
//            .cornerRadius(10)
  
            
//            HStack {
//                MyItem(fruit: "Banana", count: 5, bgColor: .yellow)
//                MyItem(fruit: "Grapes", count: 5, bgColor: .purple)
//                MyItem(fruit: "Apple", count: 45, bgColor: .red)
//            }
            contentlayer
        }
    }
}

#Preview {
    ExtractSubview()
}

var contentlayer: some View{
    HStack {
        MyItem(fruit: "Banana", count: 5, bgColor: .yellow)
        MyItem(fruit: "Grapes", count: 5, bgColor: .purple)
        MyItem(fruit: "Apple", count: 45, bgColor: .red)
    }
}

struct MyItem: View {
    @State var fruit: String
    @State var count: Int
    @State var bgColor: Color
    
    var body: some View {
        VStack{
            Text(String(count))
            Text(fruit)
        }
        .foregroundStyle(Color.black)
        .padding()
        .background(bgColor)
        .cornerRadius(10)
    }
}
