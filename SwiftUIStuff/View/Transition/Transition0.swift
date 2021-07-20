//
//  Transition0.swift
//  SwiftUIDemoList
//
//  Created by Julio Collado on 19/7/21.
//

import SwiftUI

struct Transition0: View {
    @State var transition: Bool
    var body: some View {
        VStack {
            Button(action: {
                transition.toggle()
            }, label: {
                Text("Toggle sheet")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.black)
                    )
            })
            Spacer()
            if transition {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(Color.gray)
                    .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                    .frame(width: .none, height: UIScreen.main.bounds.height * 0.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

struct Transition0_Previews: PreviewProvider {
    static var previews: some View {
        Transition0(transition: true)
    }
}
