//
//  SettingsLabelView.swift
//  Friut
//
//  Created by Satyaa Akana on 30/05/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FRUITS", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
