//
//  DarkMode0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 26/7/21.
//

import SwiftUI

struct DarkMode0: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    Text("This text color is primary")
                        .foregroundColor(.primary)
                    Text("This text color is secondary")
                        .foregroundColor(.secondary)
                    Text("This text color is white")
                        .foregroundColor(.white)
                    Text("This text color is black")
                        .foregroundColor(.black)
                    Text("This text color is red")
                        .foregroundColor(.red)
                    Text("This text is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This text is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkMode0_Previews: PreviewProvider {
    static var previews: some View {
        DarkMode0()
            .preferredColorScheme(.dark)
        DarkMode0()
            .preferredColorScheme(.light)
    }
}
