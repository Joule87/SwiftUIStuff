//
//  TapGesture0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 27/7/21.
//

import SwiftUI

struct TapGesture0: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(isSelected ? Color.red : .green)
                .frame(height: 100)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Click Button")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(height: 70)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(24)
            })
            
            Text("Click Text View")
                .font(.headline)
                .foregroundColor(Color.white)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(24)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("Double Click Text View")
                .font(.headline)
                .foregroundColor(Color.white)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .cornerRadius(24)
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
                
        }.padding(45)
    }
}

struct TapGesture0_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture0()
    }
}
