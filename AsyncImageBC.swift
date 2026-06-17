//
//  AsyncImageBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/12/25.
//

import SwiftUI

struct AsyncImageBC: View {
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
//        AsyncImage(url: URL(string: "https://picsum.photos/200"))
        
        
        
//        AsyncImage(url: url) { returnImage in
//            returnImage
//                .resizable()
//                .frame(width: 400, height: 400)
//        } placeholder: {
//            ProgressView()
//        }
        
            
        AsyncImage(url: url){ phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .frame(width: 400, height: 400)
            case .failure(let error):
                Image(systemName: "questionmark")
            }
        }
        
        

    }
}

#Preview {
    AsyncImageBC()
}
