
import SwiftUI

struct GidView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.teal,.blue,.cyan], startPoint: .top, endPoint:.bottom )
                .ignoresSafeArea()
            VStack{
                Text("Gideon Yen")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Click on this link to see my quiz app!!!!")
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                    .padding()
                Link("GitHub.com/GideonYen",
                      destination: URL(string: "https://tinyurl.com/githubGideonYenapp")!)
                .foregroundColor(.white)
                .padding()
                .background(Color.cyan)
                .cornerRadius(10)
                .padding()
                Button{
                    exit(0)
                } label: {
                    Text("CLICK ON THIS LINK IF U WANNA PLAY A MINI-GAME!!!!!")
                        .padding()
                        .foregroundColor(.black)
                        .background(Color.mint)
                        .cornerRadius(10)
                        
                        
                }
            }
        }
    }
    
    
    struct GidView_Preview: PreviewProvider {
        static var previews: some View {
            GidView()
        }
    }
}
