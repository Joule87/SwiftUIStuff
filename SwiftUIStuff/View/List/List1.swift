//
//  List1.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 20/7/21.
//

import SwiftUI

struct List1: View {
    
    @State var fruits: [String] = ["apple","orange","strawberry","banana","peach"]
    @State var veggies: [String] = ["tomato","potato","carrot","lettuce","spinach"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("FRUITS").foregroundColor(.red)) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.red.opacity(0.3))
                    
                }
                Section(header: Text("VEGGIES").foregroundColor(.green)) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.green.opacity(0.3))
                    
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: addButton,
                                trailing: EditButton()
            )
            
        }
        .accentColor(.black)
    }
    
    var addButton: some View {
        Button("Add", action: {
            fruits.append("Coconut")
        })
    }
    
    private func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    private func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct List1_Previews: PreviewProvider {
    static var previews: some View {
        List1()
    }
}
