//
//  TransitView.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 20/04/22.
//

import SwiftUI

struct TransitView: View {
    @AppStorage("onboarding") var onboarding = true
    var body: some View {
        if onboarding {
            onBoarding()
        } else {
            SecondView()
        }
    }
}

struct TransitView_Previews: PreviewProvider {
    static var previews: some View {
        TransitView()
    }
}
