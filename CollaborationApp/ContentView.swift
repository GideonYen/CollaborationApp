//
//  ContentView.swift
//  CollaborationApp
//
//  Created by Sapphire Blue on 31/5/23.
//

import SwiftUI
import Subsonic

struct ContentView: View {
    var body: some View {
        TabView {
            //            GidView()
            Text("IDK")
                .tabItem {
                    Label("Gideon", systemImage: "pc")
                }
            
            AdvaitView()
                .onAppear() {
                    play(sound: "More.mp3")
                }
                .tabItem {
                    Label("Advait", systemImage: "macpro.gen3")
                }
            Text("This is person 3! Replace me with yet another view.")
                .tabItem {
                    Label("Marcus", systemImage: "person")
                }
            Text("This is person 3! Replace me with yet another view.")
                .tabItem {
                    Label("Akshaj", systemImage: "figure.mind.and.body")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
