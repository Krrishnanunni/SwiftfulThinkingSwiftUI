//
//  ScrollViewBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/08/2025.
//

import SwiftUI

struct ScrollViewBC: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                ForEach(0..<50) { index in
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                   
                }
            }
        }
    }
}

#Preview {
    ScrollViewBC()
}
