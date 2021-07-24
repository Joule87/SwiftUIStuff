//
//  Picker2.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 24/7/21.
//

import SwiftUI

struct Picker2: View {
    @State var data: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    @State var selection: String = "Most Recent"
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .black
        
        let at = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(at, for: .normal)
    }
    
    var body: some View {
        VStack {
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(data, id: \.self, content: { element in
                        Text(element).tag(element)
                    })
                })
                .padding()
                .pickerStyle(SegmentedPickerStyle())
                .background(Color.blue.opacity(0.8))
            Spacer()
            Text("Selected: \(selection)")
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct Picker2_Previews: PreviewProvider {
    static var previews: some View {
        Picker2()
    }
}
