//
//  Picker1.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 24/7/21.
//

import SwiftUI

struct Picker1: View {
    @State var data: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    @State var selection: String = "Most Recent"
    
    var body: some View {
        VStack {
            Picker(
                selection: $selection,
                label:
                    HStack {
                        Text("Filter:")
                        Text(selection)
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(10)
                    .shadow(color: Color.blue.opacity(0.4), radius: 5, x: 8, y: 8)
                ,
                content: {
                    ForEach(data, id: \.self, content: { element in
                        Text(element).tag(element)
                    })
                })
                .padding()
                .pickerStyle(MenuPickerStyle())
            Spacer()
        }
    }
}

struct Picker1_Previews: PreviewProvider {
    static var previews: some View {
        Picker1()
    }
}
