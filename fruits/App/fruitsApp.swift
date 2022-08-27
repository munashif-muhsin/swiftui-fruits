//
//  fruitsApp.swift
//  fruits
//
//  Created by Muhsin Munashif on 25/08/2022.
//

import SwiftUI

@main
struct fruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else  {
                ContentView()
            }
        }
    }
}
