//
//  ContentView.swift
//  CollaborationApp
//
//  Created by Sapphire Blue on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
        Text("This is person 1! Replace me with a view.")
        .tabItem {
        Label("Person 1", systemImage: "person.circle.fill")
        }
        Text("This is person 2! Replace me with another view.")
        .tabItem {
        Label("Person 1", systemImage: "person")
        }
        Text("This is person 3! Replace me with yet another view.")
        .tabItem {
        Label("Person 1", systemImage: "person.fill.turn.down")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
