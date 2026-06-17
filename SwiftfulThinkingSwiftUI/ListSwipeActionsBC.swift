//
//  ListSwipeActionsBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/12/25.
//

import SwiftUI

struct ListSwipeActionsBC: View {
    @State var Fruits:[String] = [
        "Apple" , "Banana" , "Graps" , "pear" , "Tomato"
    ]
    var body: some View {
        List{
            ForEach(Fruits, id: \.self){ fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    
                        Button("Trash"){
                            
                        }
                        .tint(.red)
                        Button("save"){
                            
                        }
                        .tint(.green)

                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    
                        Button("Archive"){
                            
                        }
                        .tint(.yellow)
                    
                        
                         

                    }
            }
        }
    }
}

#Preview {
    ListSwipeActionsBC()
}
