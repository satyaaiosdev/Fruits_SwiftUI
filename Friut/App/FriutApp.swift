//
//  FriutApp.swift
//  Friut
//
//  Created by Satyaa Akana on 29/05/21.
//

import SwiftUI

@main
struct FriutApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
              OnboardingView()
            }else{
                FruitListView()
            }
        }
    }
}
