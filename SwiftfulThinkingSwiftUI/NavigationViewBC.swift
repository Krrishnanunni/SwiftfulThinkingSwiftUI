//
//  NavigationViewBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 16/10/2025.
//

import SwiftUI

struct NavigationViewBC: View {
    var body: some View {
        NavigationView {
            ScrollView{
                Text("Hello Wolrd")
                Text("Hello Wolrd")
                Text("Hello Wolrd")
                Text("Hello Wolrd")
                NavigationLink("Click here", destination: MyOtherScreen())
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading: Image(systemName: "xmark")
                                , trailing: NavigationLink(destination: MyOtherScreen()
                                                           , label: {
                Image(systemName: "gear")
            }))
        }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var PresentationMode
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .center){
                Color.gray.ignoresSafeArea(edges: .all)
                ScrollView {
                    Spacer()
                    VStack{
                        Button("Back Button") {
                            PresentationMode.wrappedValue.dismiss()
                        }
                        Text("Hiiii")
                        NavigationLink("Click HERE", destination: Text("3rd Screen"))
                        
                    }
                    .navigationTitle("Other")
                    .navigationBarTitleDisplayMode(
                        .automatic)
                    
                    .navigationBarItems(leading:
                                            HStack{
                        Button(action: {
                            PresentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                        Image(systemName: "pin")
                    }
                                        
                    )
                }
                    
                    
                    Spacer()
                }
                
            }
        }
    }


#Preview {
    NavigationViewBC()
//    MyOtherScreen()
}
