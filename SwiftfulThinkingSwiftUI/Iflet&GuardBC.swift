//
//  Iflet&GuardBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 01/12/25.
//

import SwiftUI

struct Iflet_GuardBC: View {
    @State var displayText:String? = nil
    @State var userId:String? = "kiicchhu"
    @State var isLoading: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are Praticing Safe Coding")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData()
            }
        }
    }
    func loadData(){
        if let currentid = userId{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "Current User ID is \(currentid)"
                isLoading = false
            }
        }else{
            displayText = "Please Log in"
        }
        
    }
}

#Preview {
    Iflet_GuardBC()
}
