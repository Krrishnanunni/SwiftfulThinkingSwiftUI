//
//  ProfileView.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/12/25.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentName:String?
    @AppStorage("age") var currentAge:Int?
    @AppStorage("gender") var currentGender:String?
    @AppStorage("is_signed") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 150, height: 150)
            Text(currentName ?? "Your Name goes here..")
            Text("the User is \(currentAge ?? 0) year's old")
            Text("the Gender is \(currentGender ?? "unknown")")
            Text("Sign Out")
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .background(.black)
                .cornerRadius(15)
                .onTapGesture {
                    signOut()
                }
            
                
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical,40)
        .background(.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding()
        

        
    }
}
// MARK: Function

extension ProfileView{
    
    func signOut(){
        currentAge = nil
        currentName = nil
        currentGender = nil
        
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
    
}

#Preview {
    ProfileView()
}
