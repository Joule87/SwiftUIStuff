//
//  Animation1.swift
//  SwiftUIDemoList
//
//  Created by Julio Collado on 19/7/21.
//

import SwiftUI

struct Animation1: View {
    @State var animate: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(
                    Animation
                        .default
                        .speed(0.2)
                        .repeatForever(autoreverses: true)
                ) {
                    animate.toggle()
                }
            }, label: {
                Text("Animate")
            })
            
            VStack {
                Circle()
                    .fill(animate ? Color.red : Color.orange)
                    .frame(width: animate ? 150 : 100, height: animate ? 150 : 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: animate ? UnitPoint(x: 0, y: 0) : UnitPoint(x: 0, y: 1), endPoint: animate ? UnitPoint(x: 1, y: 1) : UnitPoint(x: 1, y: 1))
                    )
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.orange]),  startPoint: animate ? .topLeading: .bottomTrailing, endPoint: .bottomTrailing)
                    )
                Capsule()
                    .offset(x: animate ? 100 : -100, y: 10)
                Ellipse()
                    .fill(Color.purple)
                    .rotationEffect(animate ? .degrees(360) : .degrees(0))
            }
            .frame(width: 200, height: .none)
            .padding()
        }
    }
}

struct Animation1_Previews: PreviewProvider {
    static var previews: some View {
        Animation1(animate: true)
    }
}
