//
//  SettingsView.swift
//  fruits
//
//  Created by Muhsin Munashif on 27/08/2022.
//

import SwiftUI

struct SettingsView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    
                    // Section 1
                    GroupBox(
                        label: SettingslabelView(
                            label: "Fruits",
                            icon: "info.circle"
                        )
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholestriol. Fruits are sources of many essential nutrients, including pottasium, dietary fibres and more")
                                .font(.footnote)
                            
                        }
                    }
                    
                    // Section 2
                    
                    GroupBox(
                        label: SettingslabelView(
                            label: "Customization",
                            icon: "paintbrush"
                        )
                    )  {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen agaain.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                        
                    }
                   
                    
                    // Section 3
                    GroupBox(
                        label: SettingslabelView(label: "Application", icon: "apps.iphone")
                    ) {
                        
                        SettingsRowView(
                            label: "Developer",
                            content: "Munashif Muhsin"
                        )
                        
                        SettingsRowView(
                            label: "Designer",
                            content: "Design Team"
                        )
                        
                        SettingsRowView(
                            label: "Compatibility",
                            content: "iOS 14"
                        )
                        
                        SettingsRowView(
                            label: "Website",
                            linkLable: "Moz Inc",
                            linkDestination: "www.moz.com"
                        )
                        
                        SettingsRowView(
                            label: "Twitter",
                            linkLable: "Munashif Muhsin",
                            linkDestination: "www.twitter.com"
                        )
                        
                        SettingsRowView(
                            label: "Swift UI ",
                            content: "2.0"
                        )
                        
                        SettingsRowView(
                            label: "Version",
                            content: "0.0.1"
                        )
                    }
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .padding()
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
