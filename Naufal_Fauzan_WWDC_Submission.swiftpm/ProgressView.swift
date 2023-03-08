//
//  ProgressView.swift
//  Relieved
//
//  Created by Naufal on 23/04/22.
//

import SwiftUI

struct ProgressView: View {
    @State var currentProgress: CGFloat = 0.0
    
       
       var body: some View {
           VStack {
               ZStack(alignment: .leading) {
                   RoundedRectangle(cornerRadius: 20)
                       .foregroundColor(.gray)
                       .frame(width: 320, height: 20)
                   RoundedRectangle(cornerRadius: 20)
                       .foregroundColor(.blue)
                       .frame(width: 400*currentProgress, height: 20)
               }
               .padding()
               Button(action: {self.startLoading()}) {
                   Text("Start breathing")
                       .font(.system(size: 28))
                       .fontWeight(.bold)
                       .minimumScaleFactor(0.01)
                       
               }
               .tint(Color(red: 0.11, green: 0.35, blue: 0.61))
               .buttonStyle(.borderedProminent)
               .buttonBorderShape(.roundedRectangle(radius:5))
           }
       }
       
       func startLoading() {
           _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
               withAnimation() {
                   self.currentProgress += 0.01
                   if self.currentProgress >= 0.8 {
                       timer.invalidate()
                   }
               }
           }
       }
   }
struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
