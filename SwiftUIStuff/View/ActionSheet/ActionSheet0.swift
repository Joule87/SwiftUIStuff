//
//  ActionSheet0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 21/7/21.
//

import SwiftUI

struct ActionSheet0: View {
    @State var showActionSheet: Bool = false
    @State var showContextMenu: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Open menu") {
                showContextMenu.toggle()
            }
            .contextMenu(menuItems: {
                /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
            })
            Button("Open actionSheet") {
                showActionSheet.toggle()
            }
            .actionSheet(isPresented: $showActionSheet, content: {
                ActionSheet(title: Text("MY ACTIONSHEEET"), message: Text("Some random text"), buttons: [
                    ActionSheet.Button.cancel(),
                    ActionSheet.Button.destructive(Text("Destroy")),
                    ActionSheet.Button.default(Text("OK")),
                
                ])
        })
        }
        
        
    }
}

struct ActionSheet0_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet0()
    }
}
