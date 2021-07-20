//
//  List0.swift
//  SwiftUIDemoList
//
//  Created by Julio Collado on 19/7/21.
//

import SwiftUI

enum Demo: String {
    case animation
    case transition
}

struct List0: View {
    let demoList: [Demo] = [.animation, .transition]
    var body: some View {
        NavigationView {
            List (0..<demoList.count) { index in
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("\(demoList[index].rawValue)")
                    })
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Demos")
            .navigationBarItems(leading:
                                    HStack(spacing: 0) {
                                        Button(action: {
                                            print("1")
                                        }, label: {
                                            Image(systemName: "gift.circle.fill")
                                                .renderingMode(.original)
                                        })
                                        Button(action: {
                                            print("2")
                                        }, label: {
                                            Image(systemName: "video.circle.fill")
                                                .renderingMode(.original)
                                        })
                                        
                                    }
                                    .padding()
                                    .scaleEffect(2)
                                , trailing:
                                    HStack {
                                        Image(systemName: "alarm")
                                            .renderingMode(.original)
                                        Image(systemName: "timer")
                                            .renderingMode(.original)
                                    }
                                    .padding()
                                    .scaleEffect(2)
            )
            
        }
    }
}

struct List0_Previews: PreviewProvider {
    static var previews: some View {
        List0()
    }
}
