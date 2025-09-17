//
//  ListBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 18/10/2025.
//

import SwiftUI

struct ListBC: View {
    
    @State var Fruits:[String] = [
        "Apple" , "Banana" , "Graps" , "pear" , "Tomato"
    ]
    
    @State var Veggies:[String] = [
        "Broccoli" , "cabbage" , "Onion" , "Garlic"
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(Fruits, id: \.self) { Fruit in
                        Text(Fruit.capitalized)
                    }
                    //                .onDelete { IndexSet in
                    //                    delete(indexSet: IndexSet)
                    //                }
                    .onDelete(perform: delete)
                    .onMove { IndexSet, Int in
                        move(IndexSet: IndexSet, Int: Int)
                    }
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(Veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }
                
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
    }
    
    var addButton: some View {
        
        Button("Add", action: {
        Fruits.append("Coconut")
    })
        
    }
    
    func delete(indexSet: IndexSet){
        Fruits.remove(atOffsets: indexSet)
        print(Fruits)
    }
    
    func move(IndexSet: IndexSet , Int: Int){
        Fruits.move(fromOffsets: IndexSet, toOffset: Int)
    }
}

#Preview {
    ListBC()
}
