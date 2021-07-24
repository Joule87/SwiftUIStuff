//
//  TextEditor0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 24/7/21.
//

import SwiftUI

struct TextEditor0: View {
    @State var name: String = "Type here"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $name)
                    .frame(width: .none, height: 300)
                    .cornerRadius(10)
                Button("Save") {
                    savedText = name
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 60)
                .background(Color.blue)
                .cornerRadius(25)
                
                Text("Text saved: \(savedText)")
                    .padding()
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Sample")
           
        }
        
    }
}

struct TextEditor0_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor0()
    }
}
