//
//  AlertBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 22/10/2025.
//

import SwiftUI

struct AlertBC: View {
    
    @State var showAlert = false
    @State var alertType:myAlerts? = nil
    @State var bgcolor:Color = .yellow
    
    enum myAlerts {
        case error
        case success
    }
    var body: some View {
        ZStack {
            bgcolor.ignoresSafeArea(edges: .all)
            VStack {
                Button("Error Button") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Success Button") {
                    alertType = .success
                    showAlert.toggle()
                }
                
            }
            .alert(isPresented: $showAlert) {
                alertFunc()
            }
        }
    }
    
    
    
    
    func alertFunc() -> Alert {
        
        switch alertType {
        case .success:
            return Alert(title: Text("This was a Success"),message: Text("Test"), dismissButton: .default(Text("Change Color"),action: {
                bgcolor = .brown
            }))
            
        case .error:
            return Alert(title: Text("This was an Error"),message: nil, dismissButton: .cancel(Text("Red"),action: {
                bgcolor = .red
            }))
            
        default:
            return Alert(title: Text("Hi"))
            
            
        }
        
//        return Alert(title: Text("Hi"), message: Tex t("hello"), primaryButton:.destructive(Text("COlor"), action: {
//            bgcolor = .brown
//        }) , secondaryButton: .default(Text("Okay"), action: {
//            bgcolor = .yellow
//        }))
        }
    }


#Preview {
    AlertBC()
}
