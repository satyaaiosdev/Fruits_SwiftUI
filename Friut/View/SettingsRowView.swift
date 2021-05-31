//
//  SettingsRowView.swift
//  Friut
//
//  Created by Satyaa Akana on 30/05/21.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if let content = content{
                Text(content)
                }else if let linkLabel = linkLabel, let linkDestination = linkDestination{
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else{
                    EmptyView()
                }
            }
        }
    }
}


struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name:"Developer")
            .previewLayout(.sizeThatFits)
            .padding()
        SettingsRowView(name:"Developer", content: "Satyaa", linkLabel: "Twitter",linkDestination: "www.google.com")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
