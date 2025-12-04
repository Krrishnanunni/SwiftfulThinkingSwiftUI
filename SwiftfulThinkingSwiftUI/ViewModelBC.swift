//
//  VoewModelBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 04/12/25.
//

import SwiftUI


class FruitViewModel: ObservableObject{
    
   @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Banana", count: 10)
        let fruit2 = FruitModel(name: "Grapes", count: 12)
        let fruit3 = FruitModel(name: "pea", count: 99)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.isLoading = false
        })
        
        

    }
}

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var count: Int
    
}

struct ViewModelBC: View {
    
//    @StateObject -> Creation
//    @ObservedObject -> SubViews
    @StateObject var fruitmodel:FruitViewModel = FruitViewModel()
//    @State var fruits: [FruitModel] = [
//        FruitModel(name: "Apple", count: 5)
//    ]
    
    var body: some View {
        NavigationView{
            List{
                if fruitmodel.isLoading {
                    ProgressView()
                }else{
                    ForEach(fruitmodel.fruitArray) { fruit  in
                        HStack{
                            Text("\(fruit.name)")
                            Text("\(fruit.count)")
                        }
                    }
                    .onDelete(perform: fruitmodel.deleteFruit)

                }
                            }

            .navigationTitle("Fruits")
            .listStyle(.grouped)
            .navigationBarItems(trailing: NavigationLink(destination: RandomScreen(friutViewModel: fruitmodel), label: {
                Image(systemName: "arrow.right")
            }))
        }
    }
    

}
struct RandomScreen: View {
    @Environment(\.presentationMode) var presentaionMode
    @ObservedObject var friutViewModel:FruitViewModel
    var body: some View{
        VStack{
            if friutViewModel.isLoading{
                ProgressView()
        }else{
                ForEach(friutViewModel.fruitArray) { fruit in
                    Text("\(fruit.name)")
            }
            }
        }
    }
    
}

#Preview {
    ViewModelBC()
}

