//
//  OnBoardingView.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 11/12/25.
//

import SwiftUI

struct OnBoardingView: View {
    
    @State var onBoardingState: Int = 0
    
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            ZStack{
                switch onBoardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                default:
                    Rectangle()
                }
            }
            VStack{
                Spacer()
                bottomButton
                    
                
            }
            .padding()
            
            
        }
    }
}

#Preview {
    OnBoardingView()
}


extension OnBoardingView{
    
    
    private var bottomButton: some View {
        Text("Sign In")
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(
                .white
            )
            .cornerRadius(15)
            .onTapGesture {
                withAnimation(.smooth, {
                    onBoardingState = 1
                })
                  
                
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            
            Text("Find Your Match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            
            Text("This is #1 App for for finding your match online! In This Tutorial We Are practicing using AppStorage and other techniques ")
                .foregroundStyle(.white)
                .fontWeight(.medium)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
        
    private var addNameSection: some View{
        VStack(spacing: 40){
            Spacer()
            
            Text("Whats Your Name ?.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                        
            Spacer()
            Spacer()
        }
    }
    
    
    
}
