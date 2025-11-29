//
//  TabViewBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 28/11/25.
//

import SwiftUI

struct TabViewBC: View {
    @State var selectedId:Int = 1
    var body: some View {
        TabView(selection: $selectedId) {
            BrowseView(selectedId: $selectedId)
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(0)
        
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)

            
            
            Text("Browse")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
            
        }
        .accentColor(.red)
    }
}

#Preview {
    TabViewBC()
}

struct BrowseView: View {
    @Binding var selectedId:Int
    var body: some View {
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.top)
            VStack(spacing: 15){
                Image(systemName: "music.note")
                    .font(.system(size: 60))
                    .foregroundStyle(.white)
                Text("Browse Music")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle( .white)
                
                Button {
                    selectedId = 2
                } label: {
                    Text("Goto Profile")
                        .font(.headline)
                        .padding()
                        .background(Color(.white))
                        .foregroundStyle(.red)
                        .clipShape(.capsule)
                }

            }
            
        }
        
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            VStack {
                TabView {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.red)
                        .overlay {
                            VStack(spacing: 15) {
                                Image(systemName: "globe")
                                
                                Text("Global Charts")
                            }
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        }
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.blue)
                        .overlay {
                            VStack(spacing: 15) {
                                Image(systemName: "music.note")
                                
                                Text("Indian Top Charts")
                            }
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        }
                    
                }
                .frame(width: 350, height: 250)
                .tabViewStyle(PageTabViewStyle())
                
                Spacer()
            }
            
        }
        
    }
}
