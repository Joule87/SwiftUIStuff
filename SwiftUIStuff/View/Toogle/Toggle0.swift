//
//  Toggle0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 24/7/21.
//

import SwiftUI

struct Toggle0: View {
    @State var turnLights: Bool = false
    
    var body: some View {
        ZStack {
            Color(turnLights ? UIColor.yellow : UIColor.black).opacity(0.8)
                .ignoresSafeArea()
                VStack {
                    Toggle(isOn: $turnLights, label: {
                        Text("Turn lights ON")
                            .foregroundColor(
                                Color(turnLights ? UIColor.black : UIColor.white)
                            )
                    })
                    .padding()
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
                }
          
        }
    }
}

struct Toggle0_Previews: PreviewProvider {
    static var previews: some View {
        Toggle0()
    }
}
