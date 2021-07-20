//
//  Animation2.swift
//  SwiftUIDemoList
//
//  Created by Julio Collado on 19/7/21.
//

import SwiftUI

struct Animation2: View {
    @State var isLoading: Bool
    
    var body: some View {
        Button(action: {
            withAnimation(.default) {
                isLoading.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation(.default) {
                        self.isLoading.toggle()
                    }
                }
            }
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: isLoading ? 50 : /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(isLoading ? Color.gray : Color.orange)
                    .frame(width: isLoading ? 60 : UIScreen.main.bounds.width * 0.85, height: 60)
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.5, anchor: .center)

                } else {
                    Text("Click")
                        .accentColor(.white)
                        .font(.largeTitle)
                }
            }
        })
        .disabled(isLoading)
    }
}

struct Animation2_Previews: PreviewProvider {
    static var previews: some View {
        Animation2(isLoading: false)
    }
}
