//
//  ContentView.swift
//  Friut
//
//  Created by Satyaa Akana on 29/05/21.
//

import SwiftUI

struct FruitListView: View {
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        })
                }
            }
            .navigationBarTitle("Fruits", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
    }
}
