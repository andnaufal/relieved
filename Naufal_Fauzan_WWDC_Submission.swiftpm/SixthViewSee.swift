//
//  SixthViewSee.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 19/04/22.
//

import SwiftUI

struct SixthViewSee: View {
    @State var userAnswer : String = ""
    @State var isHidden = false
    @State var textHidden = Text("You've Finished! now click the next button to continue!")
    @State private var refresh = false
    @FocusState private var userType: Bool
    @State var userAnswer41 : String = ""
    @State var userAnswer42 : String = ""
    @State var userInputNumber = 0
    @Binding var userAnswer11 : String
    @Binding var userAnswer12 : String
    @Binding var userAnswer13 : String
    @Binding var userAnswer14 : String
    @Binding var userAnswer15 : String
    @Binding var userAnswer21 : String
    @Binding var userAnswer22 : String
    @Binding var userAnswer23 : String
    @Binding var userAnswer24 : String
    @Binding var userAnswer31 : String
    @Binding var userAnswer32 : String
    @Binding var userAnswer33 : String
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.98, green: 0.95, blue: 0.91, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Text("Identify 2 things you can smell 👃")
                        .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                        .font(Font.custom("Arial Rounded MT Bold", size: 50))
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                        .minimumScaleFactor(0.01)
                        .foregroundColor(.black)
                        .padding(.top)
                        .padding(.bottom, 1)
                        .padding(.trailing, 50)
                        .padding(.leading, 50)
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Spacer()
                    Image("smell")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding()
                    Spacer()
                }
                
                Text("Take a deep breath and tell us 2 things you could smell")
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(Font.custom("futura", size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.bottom, 1)
                Text("For example: food from kitchen, smell of coffee, etc")
                    .font(Font.custom("futura", size: 25))
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(.system(size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                HStack{
                    let placeholder = "Type here one by one"
                    let theAnswer = TextField(placeholder + (refresh ? "" : " "), text: $userAnswer)
                        .focused($userType)
                        .textFieldStyle(.roundedBorder)
                        .padding(.leading, 100)
                        .font(.system(size: 30))
                        .minimumScaleFactor(0.01)
                        .padding(5)
                    if userInputNumber < 2 {
                        theAnswer.disabled(false)
                    } else if userInputNumber >= 2 {
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
                            userAnswer41 = answer
                        case 2 :
                            userAnswer42 = answer
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
                        .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                        .font(Font.custom("Arial Rounded MT Bold", size: 35))
                        .font(.system(size: 35))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom, 10)
                    
                    
                    HStack{
                        Text("\(userAnswer41)")
                            .font(Font.custom("futura", size: 30))
                            .font(.system(size: 30))
                            .minimumScaleFactor(0.01)
                        Text(" \(userAnswer42)")
                            .font(Font.custom("futura", size: 30))
                            .font(.system(size: 30))
                            .minimumScaleFactor(0.01)
                        
                    }
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .padding(.bottom, 0)
                    
                    //                    Text("Yay you made it❤️")
                    //                    .font(Font.custom("Bodoni 72", size: 50))
                    //                    .minimumScaleFactor(0.01)
                    //                    .opacity(isHidden ? 1 : 0)
                    //                    .padding(.top)
                }
                
                .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: SeventhViewSee(
                    userAnswer11: self.$userAnswer11,
                    userAnswer12: self.$userAnswer12,
                    userAnswer13: self.$userAnswer13,
                    userAnswer14: self.$userAnswer14,
                    userAnswer15: self.$userAnswer15,
                    userAnswer21: self.$userAnswer21,
                    userAnswer22: self.$userAnswer22,
                    userAnswer23: self.$userAnswer23,
                    userAnswer24: self.$userAnswer24,
                    userAnswer31: self.$userAnswer31,
                    userAnswer32: self.$userAnswer32,
                    userAnswer33: self.$userAnswer33,
                    userAnswer41: self.$userAnswer41,
                    userAnswer42: self.$userAnswer42
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
                        .padding(.bottom, 50)
            }
        }
    }
}

struct SixthViewSee_Previews: PreviewProvider {
    static var previews: some View {
        SixthViewSee(
            userAnswer11: .constant(""),
            userAnswer12: .constant(""),
            userAnswer13: .constant(""),
            userAnswer14: .constant(""),
            userAnswer15: .constant(""),
            userAnswer21: .constant(""),
            userAnswer22: .constant(""),
            userAnswer23: .constant(""),
            userAnswer24: .constant(""),
            userAnswer31: .constant(""),
            userAnswer32: .constant(""),
            userAnswer33: .constant("")
        )
    }
}
