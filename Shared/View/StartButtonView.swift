//
//  StartButtonView.swift
//  StartButtonView
//
//  Created by Makwan BK on 18/07/2021.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .frame(width: 20, height: 20)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
            
        } //: BUTTON
        .accentColor(.white)
    }
}

//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
