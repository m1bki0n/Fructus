//
//  SettingsLabelView.swift
//  SettingsLabelView
//
//  Created by Makwan BK on 19/07/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    var labelTitle : String
    var labelImage : String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelTitle.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }//: HSTACK
    }
}

//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelTitle: "TITLE", labelImage: "info.circle")
    }
}
