//
//  Marcus.swift
//  CollaborationApp
//
//  Created by Milind Contractor on 31/5/23.
//

import SwiftUI

struct MarcsView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .yellow],
            startPoint: .topTrailing,
            endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                Text("Marcus")
                    .font(.largeTitle)
                    .padding()
                
                Text("Warm gradient looks familiar")
                    .padding()
            }
        }
    }
}

struct MarcsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
