//
//  ActionSheetBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 22/10/2025.
// ActionSheet instagram

import SwiftUI

struct ActionSheetBC: View {
    @State var isActionSheetPresented: Bool = false
    @State var selectedPost: ActionSheetOptions = .myPost
//    @State var logoColor: Color = .black
//    @Environment(\.colorScheme) var colorScheme
//    
    
    enum ActionSheetOptions {
        case myPost
        case otherPost
    }
    
    let instagramPink = Color(
           red: 193 / 255,
           green: 53 / 255,
           blue: 132 / 255
       )
    var body: some View {

            
        ZStack {
            
            VStack {
                
                Image("InstagramLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 35)
                    .foregroundStyle(Color.primary)
                
                Divider()
                
                ScrollView(.vertical,showsIndicators: false) {
                    VStack {
                        HStack{
                            Image("therock")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .clipShape(.circle)
                                .background {
                                    Circle()
                                        .frame(width: 35, height: 35)
                                        .foregroundStyle(instagramPink)
                                }
                            Text("the_rock")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(6)
                            Spacer()
                            Button {
                                isActionSheetPresented.toggle()
                            } label: {
                                Image(systemName: "ellipsis")
                            }
                            
                        }
                        .padding()
                        .actionSheet(isPresented: $isActionSheetPresented, content: getActionSheet)
                        
                        
                        Image("therock")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity,maxHeight: 600)
                        
                        
                        HStack{
                            HStack(spacing: 0) {
                                Image(systemName: "heart.fill")
                                    .foregroundStyle(Color.pink)
                                    .font(.title)
                                Text("23")
                            }
                            
                            Image(systemName: "ellipsis.message")
                                .foregroundStyle(Color.primary)
                                .font(.title)
                            Button {
                                
                            } label: {
                                Image(systemName: "paperplane")
                                    .foregroundStyle(Color.primary)
                                    .font(.title)
                            }
                            .contextMenu {
                                Button {
                                    
                                } label: {
//                                    Image("therock")
//                                        .resizable()
//                                        .frame(width: 30, height: 30)
//                                        .aspectRatio(contentMode: .fill)
//                                        .clipShape(.circle)
                                        Circle()
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Image("therock")
                                                
                                        )
                                }

                            }

                            
                            Spacer()
                        }
                        .padding(.top)
                        .padding(.leading)
                        
                        HStack {
                            Text("23 Likes and 20 Comments")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading], 2.0)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        
                      
                    }
                }
                    
                    //vstask ended
                
                
                
                
            }
            
        }
            
        
        

        Divider()
    }
    
    func getActionSheet() -> ActionSheet {
        let shareBtn   = ActionSheet.Button.default(Text("Share"))
        let reportBtn   = ActionSheet.Button.destructive(Text("Report"))
        let deleteBtn = ActionSheet.Button.destructive(Text("Delete"))
        let cancelBtn   = ActionSheet.Button.cancel()
        
        switch selectedPost {
            
        case .myPost:
            return ActionSheet(title: Text("This is Title"),
                               message: Text("This is the Message"),
                               buttons: [shareBtn, reportBtn, deleteBtn, cancelBtn])
        case .otherPost:
            return ActionSheet(title: Text("This is Title"),
                               message: Text("This is the Message"),
                               buttons: [shareBtn, reportBtn, cancelBtn])
        }
        
    }
}

#Preview {
    ActionSheetBC()
}
