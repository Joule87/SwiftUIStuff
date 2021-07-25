//
//  Stepper0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 25/7/21.
//

import SwiftUI

struct Stepper0: View {
    @State var stepperCorner: Int = 10
    @State var increment: Int = 0
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: CGFloat(stepperCorner))
                .frame(width: 100 + CGFloat(increment), height: 100)
                .animation(.easeOut)
            VStack {
                Stepper("Stepper Corner: \(stepperCorner)", value: $stepperCorner)
                Stepper("Stepper Size") {
                    //withAnimation {
                    increment += 50
                    //}
                } onDecrement: {
                    //  withAnimation {
                    increment -= 50
                    // }
                }
            }
            .padding()
        }
    }
}

struct Stepper0_Previews: PreviewProvider {
    static var previews: some View {
        Stepper0()
    }
}
