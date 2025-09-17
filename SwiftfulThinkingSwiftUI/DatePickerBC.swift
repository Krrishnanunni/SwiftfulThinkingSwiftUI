//
//  DatePickerBC.swift
//  SwiftfulThinkingSwiftUI
//
//  Created by Krishnanunni K A on 19/11/25.
//

import SwiftUI

struct DatePickerBC: View {
    
    var todaysDate: Date = Date()
    @State var selectedDate: Date = Date()
    var staringDate: Date = Calendar.current.date(from: DateComponents(year: 2004)) ?? Date()
    
    var dateFormatter:DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack{
            
            //            Text("The Selected Date is \(selectedDate.description)")
            Text("The Selected Date is \(dateFormatter.string(from: selectedDate))")
            
            
            DatePicker("Select Date", selection: $selectedDate, in: staringDate...todaysDate, displayedComponents: [.date])
                .datePickerStyle(
                    .graphical
                )
            
//
//            DatePicker("Select Date", selection: $todaysDate, displayedComponents: [.date])
//                .padding()
//            

        }
    }
}

#Preview {
    DatePickerBC()
}
