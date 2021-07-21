//
//  SettingsView.swift
//  SettingsView
//
//  Created by Makwan BK on 19/07/2021.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
        
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelTitle: "Fructus", labelImage: "info.circle")
                     ) {
                        
                        Divider().padding(.vertical, 4)
                        
                        HStack(spacing: 10) {
                            Image("logo")
                                .resizable().scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                                                        
                            Spacer()
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sourced of many essential ...")
                                .font(.footnote)
                            
                        }//: HSTACK
                    }//: GROUPBOX
                    
                    //MARK: - SECTION 2
                    GroupBox(label:
                                SettingsLabelView(labelTitle: "Customization".uppercased(), labelImage: "paintbrush")
                    ) {
                        VStack {
                            Divider().padding(.vertical, 4)
                            
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way, it starts the onboarding process and you'll see the welcome svreen again")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            GroupBox {
                                Toggle(isOn: $isOnboarding) {
                                    Text(isOnboarding ? "Restarted".uppercased() : "Restart".uppercased())
                                        .foregroundColor(isOnboarding ? .green : .secondary)
                                        .fontWeight(.bold)
                                }//: Toggle
                            }//: GROUP BOX
                            
                        }//: VSTACK
                    }//: GROUP BOX
                    
                    
                    //MARK: - SECTION 3
                    GroupBox(label:
                                SettingsLabelView(labelTitle: "APPLICATION", labelImage: "apps.iphone")
                     ) {
                                            
                        VStack(spacing: 10) {
                            
                            SettingsRowView(title: "Developer & Designer", content: "Makwan BK")
                                                        
                            SettingsRowView(title: "Compatibility", content: "iOS 15+")
                            
                            SettingsRowView(title: "Website", content: "Makwan BK", linkLabel: "Makwan BK", linkDestination: "https://makwanbk.com")
                            
                            SettingsRowView(title: "Twitter", content: "Makwan BK", linkLabel: "@makwanbk", linkDestination: "https://twitter.com/makwanbk")
                            
                            SettingsRowView(title: "SwiftUI", content: "3.0")
                            
                            SettingsRowView(title: "Version", content: "1.0")
                            
                            
                        }//: VSTACK
                    }//: GROUPBOX
                }//: VSTACK
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                })
                .navigationBarTitle("Settings", displayMode: .large)
                .padding()
            }//: SCROLL
        }//: NAVIGATION VIEW
        
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
