//
//  Akshaj.swift
//  CollaborationApp
//
//  Created by Milind Contractor on 31/5/23.
//

import Foundation
import SwiftUI
import Subsonic

struct Akshaj: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Advait"), .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("☭")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                    
                
                Text("Akshaj")
                    .bold()
                    .foregroundColor(.yellow)
                    .padding()
                    .font(.largeTitle)
            }
        }
        
    }
}
        
        struct Akshaj_Previews: PreviewProvider {
            static var previews: some View {
                Akshaj()
            }
        }
