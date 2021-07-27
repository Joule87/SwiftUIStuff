//
//  TabViewBar1.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 26/7/21.
//

import SwiftUI

struct TabViewBar1: View {
    
    let icons: [String] = ["heart.fill", "ladybug.fill", "leaf.fill", "flame.fill", "hare.fill", "tortoise.fill"]
    
    var body: some View {
        VStack {
            RectangleCarrusel()
            ImageCarrusel(icons: icons)
        }
    }
}

struct TabViewBar1_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBar1()
    }
}

struct RectangleCarrusel: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.green)
                .padding()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.black)
                .padding()
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.red)
                .padding()
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.orange)
                .padding()
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.blue)
                .padding()
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.gray)
                .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
    }
}

struct ImageCarrusel: View {
    let icons: [String]
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 5, endRadius: 250)
        )
        .cornerRadius(20)
        .padding()
        
    }
}
