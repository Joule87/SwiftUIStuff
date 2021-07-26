//
//  Slider0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 26/7/21.
//

import SwiftUI

struct Slider0: View {
    @State var sliderValue1: Double = 1
    @State var sliderValue2: Double = 1
    @State var sliderValue3: Double = 3
    @State var sliderValue4: Double = 1
    
    @State var colorOpacitySlider4: Double = 0.2
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3)
            VStack {
                VStack {
                    Text("Rating")
                    Text("\(sliderValue1)")
                    Slider(value: $sliderValue1)
                        .accentColor(.red)
                }
                .padding()
                .background(Color.green.opacity(0.2))
                
                VStack {
                    Text("Rating")
                    Text("\(String(format: "%.1f", sliderValue2))")
                    Slider(value: $sliderValue2, in: 0...100)
                }
                .padding()
                .background(Color.green.opacity(0.2))
                
                VStack {
                    Text("Rating")
                    Text("\(String(format: "%.2f", sliderValue3))")
                    Slider(value: $sliderValue3, in: 1...5, step: 1)
                }
                .padding()
                .background(Color.green.opacity(0.2))
                
                VStack {
                    Text("Rating")
                    Text("\(String(format: "%.2f", sliderValue4))")
                    Slider(value: $sliderValue4,
                           in: 0...1,
                           step: 0.001,
                           onEditingChanged: { _ in
                            withAnimation(.easeInOut) {
                                colorOpacitySlider4 = sliderValue4
                            }
                           },
                           minimumValueLabel: Text("0"),
                           maximumValueLabel: Text("1")) {
//                        Text("Title")
                    }}
                .padding()
                .background(Color.green.opacity(colorOpacitySlider4))
            }
        }
    }
}

struct Slider0_Previews: PreviewProvider {
    static var previews: some View {
        Slider0()
    }
}
