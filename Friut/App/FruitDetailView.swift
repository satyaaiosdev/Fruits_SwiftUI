//
//  FruitDetailView.swift
//  Friut
//
//  Created by Satyaa Akana on 30/05/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEDLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //SUB HEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //NUTRIANS
                        FruitsNutrientsView(fruit: fruit)
                            .padding(.bottom, 4)
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[2])
    }
}
