//
//  TextField0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 23/7/21.
//

import SwiftUI


struct TextField0: View {
    @State var name: String = ""
    @State var age: String = ""
    @State var gender: String = ""
    //@State var birthDate: String = ""
    
    @State var nameArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    TextField("name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("age", text: $age)
                        .textFieldStyle(PlainTextFieldStyle())
                    TextField("gender", text: $gender)
                        .textFieldStyle(DefaultTextFieldStyle())
                    //TextField("birthDate", value: $birthDate, formatter: formatter)
                }.accentColor(.black)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(11)
                .padding()
                
                Button("Save".uppercased()) {
                    addName()
                }
                .padding()
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background(isValid ? Color.blue : .gray)
                .cornerRadius(25)
                
                
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(nameArray, id: \.self) { item in
                            HStack {
                                Circle().frame(width: 50, height: 50)
                                Text("\(item)")
                            }
                        }
                    }
                }
                Spacer()
            }
            .navigationTitle("TextField Test")
            
        }
        
        
    }
    
//    var formatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "HH:ss"
//        formatter.dateStyle = .short
//        return formatter
//    }
    
    var isValid: Bool {
        if name.isEmpty || gender.isEmpty || age.isEmpty {
            return false
        }
        return true
    }
    
    func addName() {
        if isValid {
            return
        }
        nameArray.append(name)
        name = ""
        age = ""
        gender = ""
    }
}

struct TextField0_Previews: PreviewProvider {
    static var previews: some View {
        TextField0()
       
    }
}
