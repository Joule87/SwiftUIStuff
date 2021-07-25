//
//  ColorPicker0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 25/7/21.
//

import SwiftUI

struct ColorPicker0: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.blue)
        }
    }
}

struct ColorPicker0_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker0()
    }
}
