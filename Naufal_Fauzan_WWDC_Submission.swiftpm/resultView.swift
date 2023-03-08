//
//  resultView.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 19/04/22.
//

import SwiftUI

struct resultView: View {
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
    @Binding var userAnswer41 : String
    @Binding var userAnswer42 : String
    @Binding var userAnswer51 : String
    
    var body: some View {
        ZStack{
            Image("backk")
                .resizable()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
       //         Spacer()
            Text("Congrats, you have finished!🎉")
                .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                .font(Font.custom("Arial Rounded MT Bold", size: 60))
                .minimumScaleFactor(0.01)
                .padding(.bottom, 1)
                .padding(.top, 50)
                .padding(.leading, 50)
                .padding(.trailing, 50)
            Text("Here's your result:")
                .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                .font(Font.custom("Arial Rounded MT Bold", size: 50))
                .minimumScaleFactor(0.01)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(.bottom, 10)
                VStack(alignment: .center){
                HStack{
                    Text("These are the 5 things that you can see:")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 40))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom,1)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                    Spacer()
                }
                HStack{
                    Text("\(userAnswer11), \(userAnswer12), \(userAnswer13), \(userAnswer14), and \(userAnswer15).")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 25))
                        .minimumScaleFactor(0.01)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                        .padding(.bottom,1)
                    Spacer()
                }
            }
            VStack{
                HStack{
                    Text("These are the 4 things that you can feel:")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 40))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom,1)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                    Spacer()
                }
                HStack{
                    Text("\(userAnswer21), \(userAnswer22), \(userAnswer23), and \(userAnswer24).")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 25))
                        .minimumScaleFactor(0.01)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                        .padding(.bottom,1)
                    Spacer()
                }
            }
            VStack{
                HStack{
                    Text("These are the 3 things that you hear:")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 40))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom,1)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                    Spacer()
                }
                HStack{
                    Text("\(userAnswer31), \(userAnswer32), and \(userAnswer33).")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 25))
                        .minimumScaleFactor(0.01)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                        .padding(.bottom,1)
                    Spacer()
                }
            }
            VStack{
                HStack{
                    Text("These are the 2 things that you can smell:")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 40))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom,1)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                    Spacer()
                }
                HStack{
                    Text("\(userAnswer41), and \(userAnswer42).")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 25))
                        .minimumScaleFactor(0.01)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                        .padding(.bottom,1)
                    Spacer()
                }
            }
            VStack{
                HStack{
                    Text("These are the 1 thing that you can taste:")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 40))
                        .minimumScaleFactor(0.01)
                        .padding(.bottom,1)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                    Spacer()
                }
                HStack{
                    Text("\(userAnswer51).")
                        .padding(.leading, 60)
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .font(Font.custom("futura", size: 25))
                        .minimumScaleFactor(0.01)
                        .padding(.trailing, 65)
                        .padding(.leading, 65)
                        .padding(.bottom,1)
                    Spacer()
                }
            }
            Spacer()
                Text("I hope this app can help you deal with your anxiety❤️ Click the button below if you want to do this again!")
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(Font.custom("futura", size: 30))
                    .minimumScaleFactor(0.01)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 120)
                    .padding(.leading, 120)
                    .padding(.bottom, 25)
            HStack{
                NavigationLink(destination: SecondView()
                    .transition(.move(edge: .trailing)
                        .animation(.default))){
                            Text("Try again")
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .minimumScaleFactor(0.01)
                        }
                        .tint(Color(red: 0.98, green: 0.85, blue: 0.61))
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius:5))
                        .padding(.bottom, 50)
            }
        }
    }
    }
    
}


struct resultView_Previews: PreviewProvider {
    // @State var userAnswer11 : String
    static var previews: some View {
        resultView(
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
            userAnswer33: .constant(""),
            userAnswer41: .constant(""),
            userAnswer42: .constant(""),
            userAnswer51: .constant(""))
    }
}
