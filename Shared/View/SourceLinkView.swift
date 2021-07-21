//
//  SourceLinkView.swift
//  SourceLinkView
//
//  Created by Makwan BK on 19/07/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content sourse")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                    .foregroundColor(Color(UIColor.link))
                
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(Color(UIColor.link))
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
    }
}
