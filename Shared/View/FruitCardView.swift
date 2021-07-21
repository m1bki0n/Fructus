//
//  FruitCardView.swift
//  FruitCardView
//
//  Created by Makwan BK on 18/07/2021.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - Properties:
    @State private var isAnimating : Bool = false
    
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    
    //MARK: - Body:
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                //IMAGE
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //TITLE
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //HEADLINE
                Text(headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON
                StartButtonView()
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
    
    
}


//MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(title: "Blueberry", headline: "...", image: "blueberry", gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
