import SwiftUI
import Subsonic

struct AdvaitView: View {
    @State var isPlaying = false
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
                        Text("Play some music while reading this!")
                            .foregroundColor(.white)
                            .padding()
                        HStack {
                            Button {
                                isPlaying.toggle()
                            } label: {
                                Image(systemName: isPlaying ? "pause.circle" : "play.circle")
                                Text(isPlaying ? "Pause" : "Play")
                            }
                            .sound("More.mp3", isPlaying: $isPlaying)
                            .buttonStyle(.borderedProminent)
                        }
                        Text("Likes to play Forza Horizon")
                            .foregroundColor(.white)
                            .padding()
                        HStack {
                            Image(systemName: "xbox.logo")
                                .foregroundColor(.white)
                            Text("SomePerson59#467")
                                .foregroundColor(.white)
                        }.padding()
                        HStack {
                            Image(systemName: "music.note")
                                .foregroundColor(.white)
                            Text("Kaskade - More (feat. Jenn Blosil)")
                                .foregroundColor(.white)
                        }.padding()
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
