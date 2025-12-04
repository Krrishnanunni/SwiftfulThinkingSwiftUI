//
//  ModelBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 02/12/25.
//

import SwiftUI
struct UserModel: Identifiable {
    let id:String = UUID().uuidString
    let displayName:String
    let userid:String
    let isVerified:Bool
    let followerCount:String
}
struct ModelBC: View {
    
    @State var users:[UserModel] =
    [
        UserModel(displayName: "Kichu", userid: "kiicchu", isVerified: false, followerCount: "80"),
        UserModel(displayName: "Godwin", userid: "goduu", isVerified: true, followerCount: "55"),
        UserModel(displayName: "Abhishek", userid: "xhypetells", isVerified: true, followerCount: "465"),
        UserModel(displayName: "Vivek Vijay", userid: "xx_cato", isVerified: false, followerCount: "1733")
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack{
                        Circle()
                            .frame(width: 44, height: 44)
                            .padding(.trailing,5)
                        VStack(alignment: .leading){
                            HStack{
                                Text(user.displayName)
                                    .font(.headline)
                                if user.isVerified{
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundStyle(.blue)
                                }
                            }
                            Text("@"+user.userid)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                
                        Spacer()
                        
                        VStack{
                            Text(user.followerCount)
                                .fontWeight(.medium)
                            Text("Followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBC()
}
