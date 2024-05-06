import SwiftUI

struct InitLaunchView: View {
    @State private var isButtonPressed = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.99, green: 0.93, blue: 0.85)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Welcome")
                        .foregroundColor(.black.opacity(0.90))
                        .font(.system(size: 46))
                        .bold()
                        .padding()
                    Text("After this demo, this app will not use your native language for instruction. Through the use of images, symbols, and associations, this app will immerse you in Spanish learning without the need for translation.")
                        .foregroundColor(.black.opacity(0.60))
                        .font(.system(size: 20))
                        .multilineTextAlignment(.center)
                        .padding(40)
                    
                    NavigationLink {
                        ContentView()
                            } label: {
                        PrimaryButton(text: "Let's go!")
                    }
                    
                }
            }
        }
    }
}

struct InitLaunchView_Previews: PreviewProvider {
    static var previews: some View {
        InitLaunchView()
    }
}
