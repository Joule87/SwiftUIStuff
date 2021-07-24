//
//  ForeEachSample.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 23/7/21.
//

import SwiftUI

struct ForeEachSample: View {
    let data: [String] = ["eeeee", "vvvvv", "dddd", "gggg"  ]
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                let v = data[index]
                Text("Element value \(v)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(Color.black)
                   
            }
        }.padding()
    }
}

struct ForeEachSample_Previews: PreviewProvider {
    static var previews: some View {
        ForeEachSample()
    }
}
