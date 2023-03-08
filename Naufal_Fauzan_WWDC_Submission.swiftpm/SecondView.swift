//
//  SecondView.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 16/04/22.
//

import SwiftUI

struct SecondView: View {

    var body: some View {
//        NavigationView{
        ZStack {
            Image("backk")
                .resizable()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Spacer()
                Text("What is Anxiety Grounding Techniques?")
                    .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                    .font(Font.custom("Arial Rounded MT Bold", size: 50))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 1)
                    .padding(.trailing, 50)
                    .padding(.leading, 50)
                Text("Anxiety Grounding Techniques is a technique that makes you focus on the moment and avoid anxious thoughts that can get in the way of your progress by doing 5 things, which is to identify...")
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(Font.custom("futura", size: 35))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.trailing, 70)
                    .padding(.leading, 70)
                    .padding(.bottom, 20)
                //                    .padding(.init(top: 150, leading: 80, bottom: 15, trailing: 80))
//
                    
                VStack(alignment: .leading){
                Text("5 things you can see 👀")
                        .font(Font.custom("futura", size: 35))
                    .padding(.bottom, 1)
                    .minimumScaleFactor(0.01)
                    //.multilineTextAlignment(.leading)
                Text("4 things you can touch 🤏")
                        .font(Font.custom("futura", size: 35))
                    .padding(.bottom, 1)
                    .minimumScaleFactor(0.01)
                    //.multilineTextAlignment(.leading)
                Text("3 things you can hear 👂")
                        .font(Font.custom("futura", size: 35))
                    .padding(.bottom, 1)
                    .minimumScaleFactor(0.01)
                    //.multilineTextAlignment(.leading)
                Text("2 things you can smell 👃")
                        .font(Font.custom("futura", size: 35))
                    .padding(.bottom, 1)
                    .minimumScaleFactor(0.01)
                    //.multilineTextAlignment(.leading)
                Text("1 things you can taste 👅")
                        .font(Font.custom("futura", size: 35))
                    .padding(.bottom, 1)
                    .minimumScaleFactor(0.01)
                    //.multilineTextAlignment(.leading)
                }
                .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                Spacer()

                NavigationLink(destination: BreathView()
                    .transition(.move(edge: .trailing)
                        .animation(.default))){
                Text("Next  ")
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .minimumScaleFactor(0.01)
                        }
                        .tint(Color(red: 0.98, green: 0.85, blue: 0.61))
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius:5))
                        .padding(.bottom, 30)
                        .padding()
                Spacer()
            }
        }
    }
        
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
