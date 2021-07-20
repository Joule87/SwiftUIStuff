//
//  Animation0.swift
//  SwiftUIDemoList
//
//  Created by Julio Collado on 19/7/21.
//

import SwiftUI

struct Animation0: View {
    @State var animate: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                animate.toggle()
            }, label: {
                Text("Animate")
            })
            
            FigureOne(animate: animate)
        }

    }
}

struct Animation0_Previews: PreviewProvider {
    static var previews: some View {
        Animation0(animate: false)
    }
}

struct FigureOne: View {
    var animate: Bool
    var body: some View {
        Rectangle()
            .fill(animate ? Color.red : .black)
            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .cornerRadius(animate ? 100/2 : 0)
            .animation(.easeInOut)
    }
}
