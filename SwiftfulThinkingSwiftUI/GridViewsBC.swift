//
//  GridViewsBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/08/2025.
//

import SwiftUI
let columns: [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
]
struct GridViewsBC: View {
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            LazyVGrid(columns: columns, spacing: nil, pinnedViews: [.sectionHeaders]) {
                Section(header: Text("Posts")
                    .font(.title)
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                ) {
                    ForEach(0..<20){ index in
                    Rectangle()
                            .foregroundColor(Color.black)
                            .frame(width: 100, height: 100)
                    }
                }
            }
            LazyVGrid(columns: columns, alignment: .center, spacing: nil, pinnedViews: [.sectionHeaders]) {
                Section(header: Text("Reels")
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                ) {
                    ForEach(0..<20){ index in
                    Rectangle()
                            .fill(Color.black)
                            .frame(height:250)
                    }
                }
            }
        }
    }
}

#Preview {
    GridViewsBC()
}
