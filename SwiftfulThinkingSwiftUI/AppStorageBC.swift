//
//  AppStorageBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 09/12/25.
//

import SwiftUI

struct AppStorageBC: View {
    @AppStorage("name") var currentUsername: String?
    var body: some View {
        VStack{
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save"){
                let name:String = "kichu"
                currentUsername = name
//                UserDefaults.standard.set(name, forKey: "name")
                
            }
            .padding()
            .foregroundStyle(.white)
            .background(Color.blue)
            .cornerRadius(30)
            
        }
//        .onAppear{
////            currentUsername = UserDefaults.standard.string(forKey: "name")
//            
//        }
    }
}

#Preview {
    AppStorageBC()
}
