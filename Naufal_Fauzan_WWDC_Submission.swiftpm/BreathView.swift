//
//  BreathView.swift
//  Relieved
//
//  Created by Naufal on 23/04/22.
//

import SwiftUI

struct BreathView: View {
    @State var currentProgress: CGFloat = 0.0
    @State var isHidden = false
    @State var showBreath = false
    
    var body: some View {
        ZStack{
            Spacer()
            Color(UIColor(red: 0.98, green: 0.95, blue: 0.91, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("First, lets take a deep breath")
                    .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                    .font(Font.custom("Arial Rounded MT Bold", size: 50))
                    .fontWeight(.heavy)
                    .font(.system(size: 50))
                    .minimumScaleFactor(0.01)
                    .foregroundColor(.black)
                    .padding(.top, 50)
                    .padding(.bottom, 1)
                    .padding(.trailing, 50)
                    .padding(.leading, 50)
                    .multilineTextAlignment(.center)
                            Text("breath in and breath out for 4 second 2 times")
                                .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                                .font(Font.custom("futura", size: 30))
                                .minimumScaleFactor(0.01)
                                .multilineTextAlignment(.center)
                                .padding(.trailing, 40)
                                .padding(.leading, 40)
                                .padding(.bottom, 1)
                Text("Press the button below to continue")
                    .font(Font.custom("futura", size: 25))
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(.system(size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.bottom, 0)
                
                    let breathButton = Button(action: {self.startLoading()}) {
                        Text("Start Breathing")
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.01)
                        
                    }
                    breathButton.disabled(showBreath)
                    .tint(Color(red: 0.11, green: 0.35, blue: 0.61))
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius:5))
                    .padding()
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.gray)
                            .frame(width: 465, height: 20)
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.blue)
                            .frame(width: 580*currentProgress, height: 20)
                    }
                    
                    
                    NavigationLink(destination: ThirdViewSee()
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
                            .opacity(isHidden ? 1 : 0)
                            .padding()
                Spacer()
                    HStack{
                        Spacer()
                        Image("calm")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 400)
                            .minimumScaleFactor(0.01)
                        //                    .padding()
                        Spacer()
                    }
               
            }
        }
    }
    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                self.currentProgress += 0.01
                if self.currentProgress >= 0.8 {
                    isHidden.toggle()
                    showBreath.toggle()
                    timer.invalidate()
                }
            }
        }
    }
    
}

struct BreathView_Previews: PreviewProvider {
    static var previews: some View {
        BreathView()
    }
}
