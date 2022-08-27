//
//  SettingsRowView.swift
//  fruits
//
//  Created by Muhsin Munashif on 27/08/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    var label: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(label)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLable != nil && linkDestination != nil {
                    Link(linkLable!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(label: "Developer", content: "Munashif Muhsin")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(label: "Developer", linkLable: "Munashif Muhsin", linkDestination: "hehe")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
