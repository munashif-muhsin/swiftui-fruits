//
//  OnboardingView.swift
//  fruits
//
//  Created by Muhsin Munashif on 25/08/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
  
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
   
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
