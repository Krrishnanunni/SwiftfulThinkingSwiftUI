//
//  OnAppearBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 30/11/25.
//

import SwiftUI

struct OnAppearBC: View {
    @State var count: Double = 0.00
    @State var countT: Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack {
                    ForEach(0..<100){ _ in
                        RoundedRectangle(cornerRadius: 20 + CGFloat(countT))
                            .frame(height: 200)
                            .padding()
                            .foregroundStyle(Color.blue.opacity(1 - count))
                            .onAppear {
                                count += 0.05
                                countT += 5
                            }
                            .onDisappear {
//                                count -= 0.05
//                                countT -= 1
                            }
                    }
                    .navigationTitle("OnApear BC : \(countT)")
                }
                
            }
        }
    }
}

#Preview {
    OnAppearBC()
}
