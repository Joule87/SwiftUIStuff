//
//  TabViewBar0.swift
//  SwiftUIStuff
//
//  Created by Julio Collado on 26/7/21.
//

import SwiftUI

struct TabViewBar0: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            BrowserView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.black)
    }
}

struct TabViewBar0_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBar0()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .padding(.all, 10)
                        .accentColor(.red)
                        .font(.title2)
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color.white)
                        )
                })
                
            }
        }
        
    }
}

struct BrowserView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Browse Tab")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
        }
        
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Text("Profile Tab")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}
