//
//  IntroView.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 10/12/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("is_signed") var currentUserSignedIn: Bool = true
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color.red , Color.purple ],
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .font(.title2)
            }else{
                    OnBoardingView()
            }
            
        }
    }
}


#Preview {
    IntroView()
}
