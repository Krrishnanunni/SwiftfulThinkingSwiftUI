//
//  OnBoardingView.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 11/12/25.
//

import SwiftUI

struct OnBoardingView: View {
    var transition:AnyTransition = .asymmetric(insertion: .move(edge: .trailing),
                                               removal: .move(edge: .leading))
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @State var onBoardingState: Int = 0
    @State var age: Double = 50
    @State var name:String      = ""
    @State var gender:String    = ""
    
    @AppStorage("name") var currentName:String?
    @AppStorage("age") var currentAge:Int?
    @AppStorage("gender") var currentGender:String?
    @AppStorage("is_signed") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            ZStack{
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
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
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

#Preview {
    OnBoardingView()
}


// MARK: Components

extension OnBoardingView{
    
    
    private var bottomButton: some View {
        Text(onBoardingState == 0 ? "Sign up" :
                onBoardingState == 3 ? "Finish" :
                "Next")
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(
                .white
            )
            .cornerRadius(15)
            .onTapGesture {
                    handleNextButtonPressed()
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
            
            TextField("Type Your Name Here ..", text: $name)
                .font(.headline)
                .frame(height: 55)
                .background(.white)
                .cornerRadius(15)
                .multilineTextAlignment(.center)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View{
        VStack(spacing: 40){
            Spacer()
            
            Text("Whats Your Gender ?.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Menu{
                Picker("Gender",selection: $gender){
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Prefer Not to Say").tag("Prefer Not To Say")
                }
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(15)

            }
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    private var addAgeSection: some View{
        VStack(spacing: 40){
            Spacer()
            
            Text("Whats Your Age ?.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Text("Age: \(Int(age))").foregroundStyle(.white).font(.headline)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    
}

// MARK: Function

extension OnBoardingView {
    func handleNextButtonPressed(){
        
        switch onBoardingState {
        case 1:
            guard name.count >= 2 else{
                showAlert(Title: "Your name must be 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else{
                showAlert(Title: "Please Select a Gender!")
                return
            }
            
        default:
            break
        }
        
        
        
        if onBoardingState == 3 {
            signedIn()
        }else{
            withAnimation(.spring) {
                onBoardingState += 1
            }
        }
            
    }
    
    
    func showAlert(Title:String) {
        alertTitle = Title
        showAlert.toggle()
    }
    
    func signedIn(){
        
        currentAge      = Int(age)
        currentName     = name
        currentGender   = gender
        withAnimation(.bouncy){
            currentUserSignedIn = true
        }
        
    }
}
