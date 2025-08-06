 //
//  SafeArea.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/09/2025.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Title Goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(10)
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
    }
}

#Preview {
    SafeArea()
}
