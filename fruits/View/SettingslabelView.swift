//
//  SettingslabelView.swift
//  fruits
//
//  Created by Muhsin Munashif on 27/08/2022.
//

import SwiftUI

struct SettingslabelView: View {
    
    var label: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: icon)
        }
    }
}

struct SettingslabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingslabelView(label: "Fruits", icon: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
