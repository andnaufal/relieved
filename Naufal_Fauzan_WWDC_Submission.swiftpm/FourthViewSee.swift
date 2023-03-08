//
//  FourthViewSee.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 18/04/22.
//

import SwiftUI




struct FourthViewSee: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .camera
    @State var userAnswer : String = ""
    @State var isHidden = false
    @State var textHidden = Text("You've Finished! now click the next button to continue!")
    @State private var refresh = false
    @FocusState private var userType: Bool
    @State var userAnswer21 : String = ""
    @State var userAnswer22 : String = ""
    @State var userAnswer23 : String = ""
    @State var userAnswer24 : String = ""
    @State var userInputNumber = 0
    @Binding var userAnswer11 : String
    @Binding var userAnswer12 : String
    @Binding var userAnswer13 : String
    @Binding var userAnswer14 : String
    @Binding var userAnswer15 : String

    var body: some View {
        ZStack{
            Color(UIColor(red: 0.98, green: 0.95, blue: 0.91, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Spacer()
                HStack{
                Text("Identify 4 things you can touch 🤏")
                        .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                        .font(Font.custom("Arial Rounded MT Bold", size: 50))
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                        .minimumScaleFactor(0.01)
                        .foregroundColor(.black)
                        .padding(.top, 20)
                        .padding(.bottom, 1)
                        .padding(.trailing, 50)
                        .padding(.leading, 50)
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Spacer()
                Image("touch")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding()
                    Spacer()
                }
                Text("Use your hand to feel things around you")
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(Font.custom("futura", size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.bottom, 1)
                Text("For example: your shirt, the floor, etc")
                    .font(Font.custom("futura", size: 25))
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(.system(size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                HStack{
                    NavigationLink(destination: CameraView(classifier: ImageClassifier(), isPresenting: $isPresenting, sourceType: $sourceType)
                        .transition(.move(edge: .trailing)
                            .animation(.default))){
                                Image(systemName: "camera")
                                    .padding(1)
                            }
                            .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                            .font(.largeTitle)
                            .padding(.leading, 100)
                    let placeholder = "Type here one by one"
                    let theAnswer = TextField(placeholder + (refresh ? "" : " "), text: $userAnswer)
                        .focused($userType)
                        .textFieldStyle(.roundedBorder)
//                        .padding(.leading, 100)
                        .font(.system(size: 30))
                        .minimumScaleFactor(0.01)
                        .padding(5)
                    if userInputNumber < 4 {
                        theAnswer.disabled(false)
                    } else if userInputNumber >= 4 {
                        theAnswer.disabled(true)
                    }
                    Button(action: {
                        let answer = String(userAnswer)
                        userInputNumber += 1
                        self.refresh.toggle()
                        userAnswer = ""
                        userType = false
                        switch userInputNumber {
                        case 1 :
                            userAnswer21 = answer
                        case 2 :
                            userAnswer22 = answer
                        case 3 :
                            userAnswer23 = answer
                        case 4 :
                            userAnswer24 = answer
                            isHidden.toggle()
                        default :
                            print("done")
                            
                        }}){
                            Text("Enter")
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.01)
                        }
                        .tint(Color(red: 0.11, green: 0.35, blue: 0.61))
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius:5))
                        .disabled(self.userAnswer.isEmpty)
                        .padding(.trailing, 100)
                }
                .padding(.bottom, 1)
                Group{
                    
                    Text("Your answer: ")
                        .font(Font.custom("Arial Rounded MT Bold", size: 35))
                        .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                        .font(.system(size: 35))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom, 10)
                    HStack{
                        Text("\(userAnswer21)")
                            .font(Font.custom("futura", size: 30))
                            .minimumScaleFactor(0.01)
                        Text(" \(userAnswer22)")
                            .font(Font.custom("futura", size: 30))
                            .minimumScaleFactor(0.01)
                        Text(" \(userAnswer23)")
                            .font(Font.custom("futura", size: 30))
                            .minimumScaleFactor(0.01)
                        Text(" \(userAnswer24)")
                            .font(Font.custom("futura", size: 30))
                            .minimumScaleFactor(0.01)
                    }
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .padding(.bottom, 0)
                    Spacer()
//                    Text("Nice!")
//                        .font(Font.custom("Bodoni 72", size: 50))
//                        .foregroundColor(Color(red: 0.98, green: 0.85, blue: 0.61))
//                        .minimumScaleFactor(0.01)
//                        .opacity(isHidden ? 1 : 0)
//                        .padding(.bottom, 1)
                    //    .padding()
                }
                .multilineTextAlignment(.center)
                NavigationLink(destination: FifthViewSee(
                    userAnswer11: self.$userAnswer11,
                    userAnswer12: self.$userAnswer12,
                    userAnswer13: self.$userAnswer13,
                    userAnswer14: self.$userAnswer14,
                    userAnswer15: self.$userAnswer15,
                    userAnswer21: self.$userAnswer21,
                    userAnswer22: self.$userAnswer22,
                    userAnswer23: self.$userAnswer23,
                    userAnswer24: self.$userAnswer24
                )
                    .transition(.move(edge: .trailing)
                        .animation(.default))){
                            Text("Next       ")
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .minimumScaleFactor(0.01)
                        }
                        .tint(Color(red: 0.98, green: 0.85, blue: 0.61))
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius:5))
                        .opacity(isHidden ? 1 : 0)
                        .padding(.bottom, 10)
                VStack{
                    HStack{
                        Text("Tips: You can also click the camera button to help recognize things around you!")
                            .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                            .font(Font.custom("futura", size: 20))
                            .minimumScaleFactor(0.01)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.leading, 150)
                            .padding(.trailing, 150)
                            .padding(.bottom, 30)
                    }
                }
            }
        }
    }
}

struct FourthViewSee_Previews: PreviewProvider {
    static var previews: some View {
        FourthViewSee(
            userAnswer11: .constant(""),
            userAnswer12: .constant(""),
            userAnswer13: .constant(""),
            userAnswer14: .constant(""),
            userAnswer15: .constant(""))
    }
}
