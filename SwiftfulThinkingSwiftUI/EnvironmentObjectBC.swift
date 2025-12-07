//
//  EnvironmentObjectBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 07/12/25.
//

import SwiftUI

class EnvironmentViewModel:ObservableObject{
    @Published var dataArray : [String] = []
    
    
    init(){
        getData()
    }
    
    func getData(){
        dataArray.append(contentsOf: ["iPad","iPhone","iMac","iWatch","iPod"])
    }
}


struct EnvironmentObjectBC: View {
    var body: some View {
        
        @StateObject var viewModel:EnvironmentViewModel = EnvironmentViewModel()
        
        
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(item, destination:DetailedView(selectedItem: item))
                }
            }
            .navigationTitle("Apple Products")
        }
        .environmentObject(viewModel)
        
    }
}


struct DetailedView:View {
    let selectedItem: String
    
    
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea()
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.largeTitle)
                    .foregroundStyle(Color.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            
            
        }
        
    }
}

struct FinalView:View {
    
    @EnvironmentObject var viewModel:EnvironmentViewModel
    
    var body: some View{
        ZStack{
            LinearGradient(colors: [.purple,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack(spacing: 20){
                ForEach(viewModel.dataArray , id: \.self){ item in
                    
                    Text(item)
                        .font(.title)
                        .foregroundStyle(.white)
                    
                }
            }
            .font(.title)
            .foregroundStyle(.white)
            
        }
    }
}









#Preview {
    EnvironmentObjectBC()
}











//class EnvironmentViewModel:ObservableObject{
//    @Published var dataArray : [String] = []
//    
//    
//    init(){
//        getData()
//    }
//    
//    func getData(){
//        dataArray.append(contentsOf: ["iPad","iPhone","iMac","iWatch","iPod"])
//    }
//}
//
//
//struct EnvironmentObjectBC: View {
//    var body: some View {
//        
//        @StateObject var viewModel:EnvironmentViewModel = EnvironmentViewModel()
//        
//        
//        NavigationView{
//            List{
//                ForEach(viewModel.dataArray, id: \.self) { item in
//                    NavigationLink(item, destination: DetailedView(
//                        selectedItem: item,
//                        viewModel: viewModel
//                    ))
//                }
//            }
//            .navigationTitle("Apple Products")
//        }
//        
//    }
//}
//
//
//struct DetailedView:View {
//    let selectedItem: String
//    @ObservedObject var viewModel:EnvironmentViewModel
//    
//    var body: some View{
//        ZStack{
//            Color.orange.ignoresSafeArea()
//            NavigationLink(destination: FinalView(viewModel: viewModel)) {
//                Text(selectedItem)
//                    .font(.largeTitle)
//                    .foregroundStyle(Color.orange)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(Color.white)
//                    .cornerRadius(30)
//            }
//            
//            
//        }
//        
//    }
//}
//
//struct FinalView:View {
//    
//    @ObservedObject var viewModel:EnvironmentViewModel
//    
//    var body: some View{
//        ZStack{
//            LinearGradient(colors: [.purple,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
//                .ignoresSafeArea(.all)
//            VStack(spacing: 20){
//                ForEach(viewModel.dataArray , id: \.self){ item in
//                    
//                    Text(item)
//                        .font(.title)
//                        .foregroundStyle(.white)
//                    
//                }
//            }
//            .font(.title)
//            .foregroundStyle(.white)
//            
//        }
//    }
//}

//
//
//
//#Preview {
//    EnvironmentObjectBC()
//}
