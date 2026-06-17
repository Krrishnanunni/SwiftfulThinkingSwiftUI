//
//  ContentUnavailableViewBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 25/01/26.
//

import SwiftUI

struct ContentUnavailableViewBC: View {
    var body: some View {
        if #available(iOS 17.0, *){
            ContentUnavailableView("Wifi", systemImage: "wifi.slash", description: Text("please retry later"))
            
        }else{
            VStack{
                Image(systemName: "wifi.slash")
                Text("Eror")
            }
        }
    }
}

#Preview {
    ContentUnavailableViewBC()
}
