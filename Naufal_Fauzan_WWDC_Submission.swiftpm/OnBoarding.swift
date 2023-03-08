import SwiftUI

struct onBoarding: View {
    @AppStorage("onBoarding") var onboarding = true
    @State var isTabViewShown = true
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("backk")
                    .resizable()
                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.all)
                
                TabView{
                    OnBoardingView(
                        onboardImage: "shock",
                        title: "What is Anxiety?",
                        description: "Anxiety is a very common things that happened to every each of us, anxiety is a reaction from our body when we're worried and afraid that caused a very unplesant feeling",
                        description2: "(swipe to continue)",
                        buttonText: "")
                    OnBoardingView(
                        onboardImage: "hello",
                        title: "Hi! Im Naufal Fauzan",
                        description: "And this is Relieved, an anxiety reliever app as my 2022 Swift Student Challenge submission",
                        description2: "(swipe to continue)",
                        buttonText: "")
                    OnBoardingView(
                        onboardImage: "logo1",
                        title: "What is Relieved",
                        description: "Relieved is an app that will help you relieve your anxiety by using a technique called the Anxiety Grounding Technique!",
                        description2: "(swipe to continue)",
                        buttonText: "Next    ")
                    SecondView()
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .automatic))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .padding()
                
                .edgesIgnoringSafeArea(.all)
            }
        }
        .navigationViewStyle(.stack)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct OnBoardingView: View {
    let onboardImage: String
    let title: String
    let description: String
    let description2: String
    let buttonText: String
    
    var body: some View {
        ZStack{
            VStack(alignment: .center) {
           //     Spacer()
                Image(onboardImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400, alignment: .center)
                Text(title)
                    .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                    .font(Font.custom("Arial Rounded MT Bold", size: 60))
                    .bold()
                    .minimumScaleFactor(0.01)
                    .padding(.bottom, 1)
                Text(description)
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(Font.custom("futura", size: 30))
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .minimumScaleFactor(0.01)
                Text(description2)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .minimumScaleFactor(0.01)
                    .padding(.top, 1)
                    .padding(.bottom, 90)
           //     Spacer()
                
//                NavigationLink(destination: SecondView()
//                    .transition(.move(edge: .trailing)
//                        .animation(.default))){
//                            Text(buttonText)
//                                .font(.system(size:30))
//                                .foregroundColor(.black)
//                                .background(Color.init(red: 190, green: 232, blue: 183))
//                                .cornerRadius(8)
//                                .padding()
//                        }
                
            }
      //      .padding(.bottom, 200)
        }
    }
}




struct onBoarding_Preview: PreviewProvider {
    static var previews: some View {
        onBoarding()
    }
}
