//
//  OnAppear0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 27/7/21.
//

import SwiftUI

struct OnAppear0: View {
    @State var myText: String = "Wait don't do anything!!!"
    
    @State var counterUp: Int = 0
    @State var counterDown: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                counterUp += 1
                            }
                            .onDisappear {
                                counterDown -= 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "You can start scrolling"
                }
            })
            .navigationTitle("onAppear: \(counterUp) | onDisappear: \(counterDown)")
        }
    }
}

struct OnAppear0_Previews: PreviewProvider {
    static var previews: some View {
        OnAppear0()
    }
}
