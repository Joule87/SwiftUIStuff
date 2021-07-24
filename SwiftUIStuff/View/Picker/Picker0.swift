//
//  Picker0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 24/7/21.
//

import SwiftUI

struct Picker0: View {
    @State var data: [String] = ["1","2","3","4","5"]
    @State var selection: String = "1"
    
    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/,
                content: {
                    ForEach(data, id: \.self, content: { element in
                        Text(element).tag(element)
                    })
                })
                .padding()
        }
    }
}

struct Picker0_Previews: PreviewProvider {
    static var previews: some View {
        Picker0()
    }
}
