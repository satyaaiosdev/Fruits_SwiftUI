//
//  OnboardingView.swift
//  Friut
//
//  Created by Satyaa Akana on 29/05/21.
//

import SwiftUI

struct OnboardingView: View {
    var fruits:[Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
