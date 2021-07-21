//
//  ContentView.swift
//  Shared
//
//  Created by Makwan BK on 18/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitData.shuffled()
    @State private var isSheetPresenter : Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }//: LIST
            .listStyle(.plain)
                
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isSheetPresenter.toggle()
            }) {
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 18, weight: .semibold, design: .default))
            })
            .sheet(isPresented: $isSheetPresenter) {
                SettingsView()
            }
            
        } //: NAVIGATION VIEW
        .navigationViewStyle(.stack) //To look better in iPadOS 
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
