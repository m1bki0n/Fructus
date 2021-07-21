//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Makwan BK on 18/07/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Properties
    var fruits : [Fruit] = fruitData
    
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(title: fruit.title, headline: fruit.headline, image: fruit.image, gradientColors: fruit.gradientColors)
            }
        } //: TAB VIEW
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
