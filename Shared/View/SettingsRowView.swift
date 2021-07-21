//
//  SettingsRowView.swift
//  SettingsRowView
//
//  Created by Makwan BK on 19/07/2021.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    var title : String
    var content : String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                if (linkLabel != nil) {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                    
                } else {
                    Text(content ?? "")
                        .fontWeight(.medium)
                }
            }
            .padding(.vertical, 2)
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(title: "Website", content: "Makwan BK", linkLabel: "Makwan BK", linkDestination: "https://makwanbk.com")
    }
}
