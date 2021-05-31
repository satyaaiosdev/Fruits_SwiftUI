//
//  StartButtonView.swift
//  Friut
//
//  Created by Satyaa Akana on 29/05/21.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK:- Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        Button(action: {
            print("Onboarding")
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                    .accentColor(.white)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .accentColor(.white)
            }
        })
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
