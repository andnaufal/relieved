//
//  PopUp.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 22/04/22.
//

import SwiftUI

struct PopUp: View {
    @Binding var show : Bool
    @Binding var congratsText : String
    var body: some View {
        ZStack{
            VStack{
                Text(congratsText)
                    .font(.title)
                Button(action: {}){
                    Text("Back")
                        .clipShape(Capsule())
                }
            }
            Button(action:{
                withAnimation{
                    show.toggle()
                }
            }) {
                Image(systemName: "xmark.circle")
                
            }
            .padding()
        }
    }
}

