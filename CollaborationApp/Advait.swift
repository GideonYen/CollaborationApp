import SwiftUI
import Subsonic

struct AdvaitView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Advait"), .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image("AdvaitImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    
                Text("Advait Conty")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("AdvaitRectangle"))
                        .frame(width: 350, height: 500)
                        .cornerRadius(20)
                    VStack {
                        HStack {
                            
                        }
                    }
                }
            }
        }
    }
}

struct AdvaitView_Preview: PreviewProvider {
    static var previews: some View {
        AdvaitView()
    }
}
