//
//  SettingsView.swift
//  Friut
//
//  Created by Satyaa Akana on 30/05/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 20){
                    GroupBox(label: SettingsLabelView(labelText: "FRUITS", labelImage: "info.circle"))
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are naturally low in fat, sodium, and cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.red)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                       
                        SettingsRowView(name: "Developer", content: "Satyaa")
                        SettingsRowView(name: "Designer", content: "AKANA")
                        SettingsRowView(name:"Compatability", content: "iOS 14")
                        SettingsRowView(name:"Website", linkLabel: "SwiftUI Master class",linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                }
            })
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(trailing: Button(action:{
                presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName: "xmark")
            })
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
