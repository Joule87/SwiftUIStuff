//
//  Alert1.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 20/7/21.
//

import SwiftUI

struct Alert1: View {
    @State var showAlert: Bool = false
    @State var isBackgroundBlack = false
    
    var body: some View {
        ZStack {
            isBackgroundBlack ? Color.black.ignoresSafeArea() :  Color.white.ignoresSafeArea()
            VStack {
                Button("Click") {
                    showAlert.toggle()
                }.alert(isPresented: $showAlert, content: {
                    //Alert(title: Text("There was an error!"))
                    Alert(title: Text("Tittle"),
                          message: Text("There was an error!"),
                          primaryButton: Alert.Button.default(Text("OK"), action: {
                            isBackgroundBlack.toggle()
                          }),
                          secondaryButton: Alert.Button.cancel())
                })
            }
        }
    }
}

struct Alert1_Previews: PreviewProvider {
    static var previews: some View {
        Alert1()
    }
}
