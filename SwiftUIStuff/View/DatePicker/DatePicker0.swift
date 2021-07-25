//
//  DatePicker0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 25/7/21.
//

import SwiftUI

struct DatePicker0: View {
    @State var birthDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2001)) ?? Date()
    let endingDateDate: Date = Calendar.current.date(from: DateComponents(year: 2009)) ?? Date()
    
    var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        ScrollView {
            VStack (spacing: 20) {
                Text("Selected date is: ")
                Text(formatter.string(from: birthDate))
                    .font(.title)
                DatePicker("Select your birthdate", selection: $birthDate)
                    .accentColor(.red)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                DatePicker("Select your birthdate", selection: $birthDate)
                    .accentColor(.red)
                    .datePickerStyle(CompactDatePickerStyle())
                
                DatePicker("Select your birthdate", selection: $birthDate)
                    .accentColor(.red)
                    .datePickerStyle(WheelDatePickerStyle())
                
                DatePicker("Select your birthdate", selection:  $birthDate, displayedComponents: [.date])
                
                DatePicker("Select your birthdate", selection: $birthDate, in: startingDate...endingDateDate)
            }
        }
    }
}

struct DatePicker0_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker0()
    }
}
